# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(document).ready ->
  messages = $('#messages')
  if $('#messages').length > 0
    messages_to_bottom = -> messages.scrollTop(messages.prop("scrollHeight"))
    messages_to_bottom()

    App.room = App.cable.subscriptions.create "RoomChannel",
      connected: ->
        # Called when the subscription is ready for use on the server

      disconnected: ->
        # Called when the subscription has been terminated by the server

      received: (data) ->
        $('#messages').append data['message']
        messages_to_bottom()
        # Called when there's incoming data on the websocket for this channel

      speak: (message, sender) ->
        @perform 'speak', message: message

    $(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
      if event.keyCode is 13 # return = send
        if event.target.value.length > 0
          App.room.speak event.target.value
          event.target.value = ""
          event.preventDefault()

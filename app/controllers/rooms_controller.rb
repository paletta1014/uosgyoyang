class RoomsController < ApplicationController
  def show
    if Message.first?
      @messages = Message.last(50)
    else
      @messages = Message.all
  end
end

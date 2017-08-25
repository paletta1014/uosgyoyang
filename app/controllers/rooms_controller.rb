class RoomsController < ApplicationController
  def show
    @messages = Message.last(50)
  end
end

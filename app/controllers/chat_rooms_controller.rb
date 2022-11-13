class ChatRoomsController < ApplicationController

  def show
    @chat_room = @chat_rooms.find(params[:id])
    @new_message = ChatMessage.new(chat_room: @chat_room)
  end
end

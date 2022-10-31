class ChatRoomsController < ApplicationController

  def show
    @chat_room = current_user.strata_plans.find(params[:strata_plan_id])
                             .chat_rooms.find(params[:id])
    @new_message = ChatMessage.new(chat_room: @chat_room)
  end
end

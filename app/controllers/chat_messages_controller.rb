class ChatMessagesController < ApplicationController

  def create
    @chat_message = ChatMessage.new(chat_message_params)
    @chat_message.author = current_user
    @chat_message.chat_room_id = params[:chat_message][:chat_room_id]
    respond_to do |f|
      if @chat_message.save
        f.html { redirect_back(fallback_location: root_path) }
      else
        f.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def chat_message_params
    params.require(:chat_message).permit(:content)
  end
end

# == Schema Information
#
# Table name: chat_messages
#
#  id           :uuid             not null, primary key
#  chat_room_id :uuid             not null
#  author_id    :uuid             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class ChatMessage < ApplicationRecord
  belongs_to :chat_room
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  has_rich_text :content
end

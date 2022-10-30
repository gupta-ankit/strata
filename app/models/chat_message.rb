class ChatMessage < ApplicationRecord
  belongs_to :chat_room
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  has_rich_text :content
end

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
FactoryBot.define do
  factory :chat_message do
    chat_room { nil }
    author { nil }
  end
end

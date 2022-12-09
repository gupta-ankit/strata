# == Schema Information
#
# Table name: chat_rooms
#
#  id             :uuid             not null, primary key
#  name           :string
#  creator_id     :uuid             not null
#  strata_plan_id :uuid             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class ChatRoom < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :chat_messages
end

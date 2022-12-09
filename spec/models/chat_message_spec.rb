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
require 'rails_helper'

RSpec.describe ChatMessage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

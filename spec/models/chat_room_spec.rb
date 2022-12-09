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
require 'rails_helper'

RSpec.describe ChatRoom, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

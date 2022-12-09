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
FactoryBot.define do
  factory :chat_room do
    creator { nil }
  end
end

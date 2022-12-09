# == Schema Information
#
# Table name: strata_admins
#
#  id             :uuid             not null, primary key
#  strata_plan_id :uuid             not null
#  user_id        :uuid             not null
#  role           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :strata_admin do
    strata_plan { nil }
    user { nil }
    role { "MyString" }
  end
end

# == Schema Information
#
# Table name: residential_units
#
#  id             :uuid             not null, primary key
#  name           :string
#  strata_plan_id :uuid             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :residential_unit do
    name { "MyString" }
    strata_plan { nil }
  end
end

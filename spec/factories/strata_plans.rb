# == Schema Information
#
# Table name: strata_plans
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :strata_plan do
    name { "MyString" }
  end
end

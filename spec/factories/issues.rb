# == Schema Information
#
# Table name: issues
#
#  id             :uuid             not null, primary key
#  strata_plan_id :uuid             not null
#  reporter_id    :uuid             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :issue do
    strata_plan { nil }
    reporter { nil }
  end
end

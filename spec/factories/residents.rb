# == Schema Information
#
# Table name: residents
#
#  id                  :uuid             not null, primary key
#  user_id             :uuid             not null
#  residential_unit_id :uuid             not null
#  start_date          :datetime
#  end_date            :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
FactoryBot.define do
  factory :resident do
    user { nil }
    residential_unit { nil }
    start_date { "2022-10-10 23:50:08" }
    end_date { "2022-10-10 23:50:08" }
  end
end

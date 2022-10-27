FactoryBot.define do
  factory :strata_admin do
    strata_plan { nil }
    user { nil }
    role { "MyString" }
  end
end

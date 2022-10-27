FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "#{n}@example.com"}
    password {"password"}    
  end
end

# == Schema Information
#
# Table name: comments
#
#  id               :uuid             not null, primary key
#  content          :text
#  commentable_type :string           not null
#  commentable_id   :uuid             not null
#  user_id          :uuid             not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
FactoryBot.define do
  factory :comment do
    content { "MyText" }
    commentable { nil }
  end
end

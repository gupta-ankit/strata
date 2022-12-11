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
class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  validates :content, presence: true
  belongs_to :user
end

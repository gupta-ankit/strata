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
class Issue < ApplicationRecord
  belongs_to :strata_plan
  belongs_to :reporter, class_name: 'User', foreign_key: 'reporter_id'

  has_rich_text :content
  has_many_attached :images

  has_many :comments, as: :commentable, dependent: :destroy
end

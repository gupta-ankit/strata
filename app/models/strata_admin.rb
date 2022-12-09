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
class StrataAdmin < ApplicationRecord
  belongs_to :strata_plan
  belongs_to :user
end

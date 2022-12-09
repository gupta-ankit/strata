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
class ResidentialUnit < ApplicationRecord
  belongs_to :strata_plan
  has_many :residents
end

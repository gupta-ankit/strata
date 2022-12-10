# == Schema Information
#
# Table name: strata_plans
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class StrataPlan < ApplicationRecord
  has_many :residential_units
  has_many :chat_rooms
  has_many :strata_admins

  def residents
    Resident.includes(:residential_unit, :user).where(residential_unit: { strata_plan_id: id })
  end
end

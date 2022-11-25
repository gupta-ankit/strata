class StrataPlan < ApplicationRecord
  has_many :residential_units
  has_many :chat_rooms

  def residents
    Resident.includes(:residential_unit, :user).where(residential_unit: {strata_plan_id: id})
  end
end

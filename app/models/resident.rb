class Resident < ApplicationRecord
  belongs_to :user
  belongs_to :residential_unit

  delegate :email, to: :user
end

class ResidentialUnit < ApplicationRecord
  belongs_to :strata_plan
  has_many :residents
end

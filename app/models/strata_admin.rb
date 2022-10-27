class StrataAdmin < ApplicationRecord
  belongs_to :strata_plan
  belongs_to :user
end

class Issue < ApplicationRecord
  belongs_to :strata_plan
  belongs_to :reporter, class_name: 'User', foreign_key: 'reporter_id'
end

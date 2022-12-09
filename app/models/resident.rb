# == Schema Information
#
# Table name: residents
#
#  id                  :uuid             not null, primary key
#  user_id             :uuid             not null
#  residential_unit_id :uuid             not null
#  start_date          :datetime
#  end_date            :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Resident < ApplicationRecord
  belongs_to :user
  belongs_to :residential_unit

  delegate :email, to: :user
end

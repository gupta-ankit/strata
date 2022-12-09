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
require 'rails_helper'

RSpec.describe Resident, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

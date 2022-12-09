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
require 'rails_helper'

RSpec.describe ResidentialUnit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

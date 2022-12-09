# == Schema Information
#
# Table name: issues
#
#  id             :uuid             not null, primary key
#  strata_plan_id :uuid             not null
#  reporter_id    :uuid             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe Issue, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

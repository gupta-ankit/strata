# == Schema Information
#
# Table name: strata_admins
#
#  id             :uuid             not null, primary key
#  strata_plan_id :uuid             not null
#  user_id        :uuid             not null
#  role           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe StrataAdmin, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

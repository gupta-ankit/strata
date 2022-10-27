require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#strata_plans" do
    it 'returns strata plans where the user is a resident' do
      plan = create(:strata_plan)
      user = create(:user)
      residential_unit = create(:residential_unit, strata_plan: plan)
      resident = create(:resident, user: user, residential_unit: residential_unit)

      expect(user.strata_plans).to include(plan)
    end
  end
end

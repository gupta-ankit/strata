require 'rails_helper'

RSpec.describe ResidentManager do
  let(:strata_plan) { create(:strata_plan) }
  let(:residential_unit) { create(:residential_unit, strata_plan: strata_plan) }
  let(:params) {
    {
      email: "email@example.com",
      residential_unit: residential_unit,
    }
  }

  describe 'create_by_email' do
    context 'when the user does not exist' do
      it 'create a user' do
        expect {
          ResidentManager.create_by_email(**params)
        }.to change(User, :count).by(1)
                                 .and change(Resident, :count).by(1)
      end
    end
  end
end
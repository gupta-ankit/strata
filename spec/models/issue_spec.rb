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
  describe "#save" do
    it 'sets reported as the default status' do
      is = create(:issue, strata_plan: create(:strata_plan), reporter: create(:user))
      expect(is.persisted?).to be(true)
      expect(is.status).to eq("reported")
    end

    it 'sets the provided status' do
      is = create(:issue, strata_plan: create(:strata_plan), reporter: create(:user), status: "done")
      expect(is.persisted?).to be(true)
      expect(is.status_done?).to be(true)
    end
  end
end

require 'rails_helper'

RSpec.describe "strata_plans/edit", type: :view do
  let(:strata_plan) {
    StrataPlan.create!()
  }

  before(:each) do
    assign(:strata_plan, strata_plan)
  end

  it "renders the edit strata_plan form" do
    render

    assert_select "form[action=?][method=?]", strata_plan_path(strata_plan), "post" do
    end
  end
end

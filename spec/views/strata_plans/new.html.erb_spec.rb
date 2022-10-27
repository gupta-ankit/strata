require 'rails_helper'

RSpec.describe "strata_plans/new", type: :view do
  before(:each) do
    assign(:strata_plan, StrataPlan.new())
  end

  it "renders new strata_plan form" do
    render

    assert_select "form[action=?][method=?]", strata_plans_path, "post" do
    end
  end
end

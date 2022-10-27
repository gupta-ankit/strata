require 'rails_helper'

RSpec.describe "strata_plans/show", type: :view do
  before(:each) do
    assign(:strata_plan, StrataPlan.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

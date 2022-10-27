require 'rails_helper'

RSpec.describe "strata_plans/index", type: :view do
  before(:each) do
    assign(:strata_plans, [
      StrataPlan.create!(),
      StrataPlan.create!()
    ])
  end

  it "renders a list of strata_plans" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end

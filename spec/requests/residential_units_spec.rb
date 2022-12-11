require 'rails_helper'

RSpec.describe "StrataPlans::ResidentialUnits", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/strata_plans/residential_units/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/strata_plans/residential_units/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/strata_plans/residential_units/create"
      expect(response).to have_http_status(:success)
    end
  end

end

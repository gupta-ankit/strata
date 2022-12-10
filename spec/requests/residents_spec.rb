require 'rails_helper'

RSpec.describe "Residents", type: :request do
  let(:strata_plan) { create(:strata_plan) }
  let(:user) { create(:user) }

  before do
    create(:strata_admin, strata_plan: strata_plan, user: user)
    user.confirm
    sign_in user
  end

  describe "GET /index" do
    it "returns http success" do
      get "/strata_plans/#{strata_plan.id}/residents"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/residents/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      post "/residents/create"
      expect(response).to have_http_status(:success)
    end
  end

end

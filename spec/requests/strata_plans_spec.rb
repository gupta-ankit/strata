require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/strata_plans", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # StrataPlan. As you add validations to StrataPlan, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      StrataPlan.create! valid_attributes
      get strata_plans_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      strata_plan = StrataPlan.create! valid_attributes
      get strata_plan_url(strata_plan)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_strata_plan_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      strata_plan = StrataPlan.create! valid_attributes
      get edit_strata_plan_url(strata_plan)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new StrataPlan" do
        expect {
          post strata_plans_url, params: { strata_plan: valid_attributes }
        }.to change(StrataPlan, :count).by(1)
      end

      it "redirects to the created strata_plan" do
        post strata_plans_url, params: { strata_plan: valid_attributes }
        expect(response).to redirect_to(strata_plan_url(StrataPlan.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new StrataPlan" do
        expect {
          post strata_plans_url, params: { strata_plan: invalid_attributes }
        }.to change(StrataPlan, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post strata_plans_url, params: { strata_plan: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested strata_plan" do
        strata_plan = StrataPlan.create! valid_attributes
        patch strata_plan_url(strata_plan), params: { strata_plan: new_attributes }
        strata_plan.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the strata_plan" do
        strata_plan = StrataPlan.create! valid_attributes
        patch strata_plan_url(strata_plan), params: { strata_plan: new_attributes }
        strata_plan.reload
        expect(response).to redirect_to(strata_plan_url(strata_plan))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        strata_plan = StrataPlan.create! valid_attributes
        patch strata_plan_url(strata_plan), params: { strata_plan: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested strata_plan" do
      strata_plan = StrataPlan.create! valid_attributes
      expect {
        delete strata_plan_url(strata_plan)
      }.to change(StrataPlan, :count).by(-1)
    end

    it "redirects to the strata_plans list" do
      strata_plan = StrataPlan.create! valid_attributes
      delete strata_plan_url(strata_plan)
      expect(response).to redirect_to(strata_plans_url)
    end
  end
end

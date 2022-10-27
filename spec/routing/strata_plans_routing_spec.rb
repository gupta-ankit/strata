require "rails_helper"

RSpec.describe StrataPlansController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/strata_plans").to route_to("strata_plans#index")
    end

    it "routes to #new" do
      expect(get: "/strata_plans/new").to route_to("strata_plans#new")
    end

    it "routes to #show" do
      expect(get: "/strata_plans/1").to route_to("strata_plans#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/strata_plans/1/edit").to route_to("strata_plans#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/strata_plans").to route_to("strata_plans#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/strata_plans/1").to route_to("strata_plans#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/strata_plans/1").to route_to("strata_plans#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/strata_plans/1").to route_to("strata_plans#destroy", id: "1")
    end
  end
end

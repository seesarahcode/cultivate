require "spec_helper"

describe PlantsController do
  describe "routing" do

    it "routes to #index" do
      get("/plants").should route_to("plants#index")
    end
    
  end
end

require "spec_helper"

describe GoatsController do
  describe "routing" do

    it "routes to #index" do
      get("/goats").should route_to("goats#index")
    end

    it "routes to #new" do
      get("/goats/new").should route_to("goats#new")
    end

    it "routes to #show" do
      get("/goats/1").should route_to("goats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/goats/1/edit").should route_to("goats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/goats").should route_to("goats#create")
    end

    it "routes to #update" do
      put("/goats/1").should route_to("goats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/goats/1").should route_to("goats#destroy", :id => "1")
    end

  end
end

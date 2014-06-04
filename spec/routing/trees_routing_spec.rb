require "spec_helper"

describe TreesController do
  describe "routing" do

    it "routes to #index" do
      get("/trees").should route_to("trees#index")
    end

    it "routes to #new" do
      get("/trees/new").should route_to("trees#new")
    end

    it "routes to #show" do
      get("/trees/1").should route_to("trees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/trees/1/edit").should route_to("trees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/trees").should route_to("trees#create")
    end

    it "routes to #update" do
      put("/trees/1").should route_to("trees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/trees/1").should route_to("trees#destroy", :id => "1")
    end

  end
end

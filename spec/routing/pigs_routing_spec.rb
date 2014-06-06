require "spec_helper"

describe PigsController do
  describe "routing" do

    it "routes to #index" do
      get("/pigs").should route_to("pigs#index")
    end

    it "routes to #new" do
      get("/pigs/new").should route_to("pigs#new")
    end

    it "routes to #show" do
      get("/pigs/1").should route_to("pigs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pigs/1/edit").should route_to("pigs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pigs").should route_to("pigs#create")
    end

    it "routes to #update" do
      put("/pigs/1").should route_to("pigs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pigs/1").should route_to("pigs#destroy", :id => "1")
    end

  end
end

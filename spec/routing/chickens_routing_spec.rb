require "spec_helper"

describe ChickensController do
  describe "routing" do

    it "routes to #index" do
      get("/chickens").should route_to("chickens#index")
    end

    it "routes to #new" do
      get("/chickens/new").should route_to("chickens#new")
    end

    it "routes to #show" do
      get("/chickens/1").should route_to("chickens#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chickens/1/edit").should route_to("chickens#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chickens").should route_to("chickens#create")
    end

    it "routes to #update" do
      put("/chickens/1").should route_to("chickens#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chickens/1").should route_to("chickens#destroy", :id => "1")
    end

  end
end

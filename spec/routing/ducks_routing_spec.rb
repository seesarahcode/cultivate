require "spec_helper"

describe DucksController do
  describe "routing" do

    it "routes to #index" do
      get("/ducks").should route_to("ducks#index")
    end

    it "routes to #new" do
      get("/ducks/new").should route_to("ducks#new")
    end

    it "routes to #show" do
      get("/ducks/1").should route_to("ducks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ducks/1/edit").should route_to("ducks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ducks").should route_to("ducks#create")
    end

    it "routes to #update" do
      put("/ducks/1").should route_to("ducks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ducks/1").should route_to("ducks#destroy", :id => "1")
    end

  end
end

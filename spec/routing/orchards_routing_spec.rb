require "spec_helper"

describe OrchardsController do
  describe "routing" do

    it "routes to #index" do
      get("/orchards").should route_to("orchards#index")
    end

    it "routes to #new" do
      get("/orchards/new").should route_to("orchards#new")
    end

    it "routes to #show" do
      get("/orchards/1").should route_to("orchards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/orchards/1/edit").should route_to("orchards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/orchards").should route_to("orchards#create")
    end

    it "routes to #update" do
      put("/orchards/1").should route_to("orchards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/orchards/1").should route_to("orchards#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe SheepController do
  describe "routing" do

    it "routes to #index" do
      get("/sheep").should route_to("sheep#index")
    end

    it "routes to #new" do
      get("/sheep/new").should route_to("sheep#new")
    end

    it "routes to #show" do
      get("/sheep/1").should route_to("sheep#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sheep/1/edit").should route_to("sheep#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sheep").should route_to("sheep#create")
    end

    it "routes to #update" do
      put("/sheep/1").should route_to("sheep#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sheep/1").should route_to("sheep#destroy", :id => "1")
    end

  end
end

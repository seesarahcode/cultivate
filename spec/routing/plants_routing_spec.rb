require "spec_helper"

describe PlantsController do
  before :each do 
    @garden = FactoryGirl.create(:garden)
    @plant = FactoryGirl.create(:plant)
  end

  describe "routing" do

    it "routes to #index" do
      get("/plants").should route_to(:controller => "gardens", :action => "index")
    end

    it "routes to #new" do
      path = new_garden_plant_path(@garden.id)
      { :get => path }.should route_to(
        :controller => 'plants',
        :action => 'new',
        :garden_id => '1'
      )
    end

    it "routes to #show" do
      path = garden_plant_path(@garden, @plant)
      { :get => path }.should route_to(
        :controller => 'plants',
        :action => 'show',
        :garden_id => '1', 
        :id => '1'
      )
    end

    it "routes to #edit" do
      path = edit_garden_plant_path(@garden, @plant)
      { :get => path }.should route_to(
        :controller => 'plants',
        :action => 'edit',
        :garden_id => '1', 
        :id => '1'
      )
    end
  end
end

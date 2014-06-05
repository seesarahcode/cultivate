require "spec_helper"

describe TreesController do
  before :each do 
    @orchard = FactoryGirl.create(:orchard)
    @tree = FactoryGirl.create(:tree)
  end

  describe "routing" do

    it "routes to #index" do
      get("/trees").should route_to(:controller => "orchards", :action => "index")
    end

    it "routes to #new" do
      path = new_orchard_tree_path(@orchard.id)
      { :get => path }.should route_to(
        :controller => 'trees',
        :action => 'new',
        :orchard_id => '1'
      )
    end

    it "routes to #show" do
      path = orchard_tree_path(@orchard, @tree)
      { :get => path }.should route_to(
        :controller => 'trees',
        :action => 'show',
        :orchard_id => '1', 
        :id => '1'
      )
    end

    it "routes to #edit" do
      path = edit_orchard_tree_path(@orchard, @tree)
      { :get => path }.should route_to(
        :controller => 'trees',
        :action => 'edit',
        :orchard_id => '1', 
        :id => '1'
      )
    end
  end
end

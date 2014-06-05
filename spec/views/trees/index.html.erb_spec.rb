require 'spec_helper'

describe "trees/index" do
  before(:each) do
    assign(:trees, [
      stub_model(Tree,
        :tree_type => "Type",
        :variety => "Variety",
        :tree_source => "Tree Source",
        :plant_quantity => 1,
        :notes => "MyText",
        :orchard_id => 1
      ),
      stub_model(Tree,
        :tree_type => "Type",
        :variety => "Variety",
        :tree_source => "Tree Source",
        :plant_quantity => 1,
        :notes => "MyText",
        :orchard_id => 1
      )
    ])
  end

 
end

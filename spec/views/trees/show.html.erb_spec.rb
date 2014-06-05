require 'spec_helper'

describe "trees/show" do
  before(:each) do
    @tree = assign(:tree, stub_model(Tree,
      :type => "Type",
      :variety => "Variety",
      :tree_source => "Tree Source",
      :plant_quantity => 1,
      :notes => "MyText"
    ))
  end


end

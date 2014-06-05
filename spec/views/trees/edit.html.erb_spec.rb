require 'spec_helper'

describe "trees/edit" do
  before(:each) do
    @tree = assign(:tree, stub_model(Tree,
      :type => "",
      :variety => "MyString",
      :tree_source => "MyString",
      :plant_quantity => 1,
      :notes => "MyText"
    ))
  end

end

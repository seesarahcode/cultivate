require 'spec_helper'

describe "trees/new" do
  before(:each) do
    assign(:tree, stub_model(Tree,
      :type => "",
      :variety => "MyString",
      :tree_source => "MyString",
      :plant_quantity => 1,
      :notes => "MyText"
    ).as_new_record)
  end


end

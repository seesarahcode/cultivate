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

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    rendered.should match(/Variety/)
    rendered.should match(/Tree Source/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end

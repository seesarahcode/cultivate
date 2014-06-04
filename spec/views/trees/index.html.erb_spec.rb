require 'spec_helper'

describe "trees/index" do
  before(:each) do
    assign(:trees, [
      stub_model(Tree,
        :type => "Type",
        :variety => "Variety",
        :tree_source => "Tree Source",
        :plant_quantity => 1,
        :notes => "MyText"
      ),
      stub_model(Tree,
        :type => "Type",
        :variety => "Variety",
        :tree_source => "Tree Source",
        :plant_quantity => 1,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of trees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Variety".to_s, :count => 2
    assert_select "tr>td", :text => "Tree Source".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

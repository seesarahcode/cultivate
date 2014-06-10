require 'spec_helper'

describe "plants/index" do
  before(:each) do
    assign(:plants, [
      stub_model(Plant,
        :garden_id => 1,
        :family => "Family",
        :variety => "Variety",
        :seed_source => "Seed Source",
        :quantity => 2,
        :notes => "MyText"
      ),
      stub_model(Plant,
        :garden_id => 1,
        :family => "Family",
        :variety => "Variety",
        :seed_source => "Seed Source",
        :quantity => 2,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of plants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Family".to_s, :count => 2
    assert_select "tr>td", :text => "Variety".to_s, :count => 2
    assert_select "tr>td", :text => "Seed Source".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

require 'spec_helper'

describe "plants/index" do
  before(:each) do
    assign(:plants, [
      stub_model(Plant,
        :lifecycle => "Lifecycle",
        :plant_type => "Plant Type",
        :breed => "Breed",
        :sun_preference => "Sun Preference",
        :soil_type => "Soil Type"
      ),
      stub_model(Plant,
        :lifecycle => "Lifecycle",
        :plant_type => "Plant Type",
        :breed => "Breed",
        :sun_preference => "Sun Preference",
        :soil_type => "Soil Type"
      )
    ])
  end

  it "renders a list of plants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lifecycle".to_s, :count => 2
    assert_select "tr>td", :text => "Plant Type".to_s, :count => 2
    assert_select "tr>td", :text => "Breed".to_s, :count => 2
    assert_select "tr>td", :text => "Sun Preference".to_s, :count => 2
    assert_select "tr>td", :text => "Soil Type".to_s, :count => 2
  end
end

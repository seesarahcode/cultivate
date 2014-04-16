require 'spec_helper'

describe "plants/show" do
  before(:each) do
    @plant = assign(:plant, stub_model(Plant,
      :lifecycle => "Lifecycle",
      :plant_type => "Plant Type",
      :breed => "Breed",
      :sun_preference => "Sun Preference",
      :soil_type => "Soil Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lifecycle/)
    rendered.should match(/Plant Type/)
    rendered.should match(/Breed/)
    rendered.should match(/Sun Preference/)
    rendered.should match(/Soil Type/)
  end
end

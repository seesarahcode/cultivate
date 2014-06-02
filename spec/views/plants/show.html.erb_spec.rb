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
end

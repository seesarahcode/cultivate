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
end

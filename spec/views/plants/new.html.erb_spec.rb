require 'spec_helper'

describe "plants/new" do
  before(:each) do
    assign(:plant, stub_model(Plant,
      :lifecycle => "MyString",
      :plant_type => "MyString",
      :breed => "MyString",
      :sun_preference => "MyString",
      :soil_type => "MyString",
      :garden_id => "1"
    ).as_new_record)
  end
end

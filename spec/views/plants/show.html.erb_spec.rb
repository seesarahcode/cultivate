require 'spec_helper'

describe "plants/show" do
  before(:each) do
    @plant = assign(:plant, stub_model(Plant,
      :garden_id => 1,
      :family => "Family",
      :variety => "Variety",
      :seed_source => "Seed Source",
      :quantity => 2,
      :notes => "MyText"
    ))
  end


end

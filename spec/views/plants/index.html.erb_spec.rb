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


end

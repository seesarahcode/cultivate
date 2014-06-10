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

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Family/)
    rendered.should match(/Variety/)
    rendered.should match(/Seed Source/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
  end
end

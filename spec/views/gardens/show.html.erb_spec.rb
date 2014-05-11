require 'spec_helper'

describe "gardens/show" do
  before(:each) do
    @garden = assign(:garden, stub_model(Garden,
      :season => "Summer",
      :year => "2014",
      :area => "Patio"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Season/)
    rendered.should match(/Year/)
    rendered.should match(/Are/)
  end
end

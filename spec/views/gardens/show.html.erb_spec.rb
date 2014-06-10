require 'spec_helper'

describe "gardens/show" do
  before(:each) do
    @garden = assign(:garden, stub_model(Garden,
      :season => "Season",
      :year => 1,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Season/)
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end

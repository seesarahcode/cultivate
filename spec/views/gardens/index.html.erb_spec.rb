require 'spec_helper'

describe "gardens/index" do
  before(:each) do
    assign(:gardens, [
      stub_model(Garden,
        :season => "Season",
        :year => 1999,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Garden,
        :season => "Season",
        :year => 1999,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of gardens" do
    render
   
  end
end

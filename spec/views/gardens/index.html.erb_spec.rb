require 'spec_helper'

describe "gardens/index" do
  before(:each) do
    assign(:gardens, [
      stub_model(Garden,
        :season => "Season",
        :year => "Year",
        :area => "Area"
      ),
        :season => "Season",
        :year => "Year",
        :area => "Area"
      )
    ])
  end

  it "renders a list of gardens" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Season".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
  end
end

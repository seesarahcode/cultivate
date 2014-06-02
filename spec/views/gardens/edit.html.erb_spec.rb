require 'spec_helper'

describe "gardens/edit" do
  before(:each) do
    @garden = assign(:garden, stub_model(Garden,
      :season => "MyString",
      :year => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit plant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", garden_path(@garden), "post" do
      assert_select "input#garden_season[name=?]", "garden[season]"
      assert_select "input#garden_year[name=?]", "garden[year]"
      assert_select "input#garden_description[name=?]", "garden[description]"
    end
  end
end

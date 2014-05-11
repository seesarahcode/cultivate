require 'spec_helper'

describe "gardens/new" do
  before(:each) do
    assign(:garden, stub_model(Garden,
      :season => "MyString",
      :year => "MyString",
      :area => "MyString"
    ).as_new_record)
  end

  it "renders new garden form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gardens_path, "post" do
      assert_select "input#garden_season[name=?]", "plant[season]"
      assert_select "input#garden_year[name=?]", "plant[year]"
      assert_select "input#garden_area[name=?]", "plant[area]"
    end
  end
end

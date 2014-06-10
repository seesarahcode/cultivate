require 'spec_helper'

describe "gardens/new" do
  before(:each) do
    assign(:garden, stub_model(Garden,
      :season => "MyString",
      :year => 1,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new garden form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gardens_path, "post" do
      assert_select "input#garden_season[name=?]", "garden[season]"
      assert_select "input#garden_year[name=?]", "garden[year]"
      assert_select "input#garden_name[name=?]", "garden[name]"
      assert_select "input#garden_description[name=?]", "garden[description]"
    end
  end
end

require 'spec_helper'

describe "plants/new" do
  before(:each) do
    assign(:plant, stub_model(Plant,
      :garden_id => 1,
      :family => "MyString",
      :variety => "MyString",
      :seed_source => "MyString",
      :quantity => 1,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new plant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plants_path, "post" do
      assert_select "input#plant_garden_id[name=?]", "plant[garden_id]"
      assert_select "input#plant_family[name=?]", "plant[family]"
      assert_select "input#plant_variety[name=?]", "plant[variety]"
      assert_select "input#plant_seed_source[name=?]", "plant[seed_source]"
      assert_select "input#plant_quantity[name=?]", "plant[quantity]"
      assert_select "textarea#plant_notes[name=?]", "plant[notes]"
    end
  end
end

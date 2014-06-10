require 'spec_helper'

describe "plants/edit" do
  before(:each) do
    @plant = assign(:plant, stub_model(Plant,
      :garden_id => 1,
      :family => "MyString",
      :variety => "MyString",
      :seed_source => "MyString",
      :quantity => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit plant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plant_path(@plant), "post" do
      assert_select "input#plant_garden_id[name=?]", "plant[garden_id]"
      assert_select "input#plant_family[name=?]", "plant[family]"
      assert_select "input#plant_variety[name=?]", "plant[variety]"
      assert_select "input#plant_seed_source[name=?]", "plant[seed_source]"
      assert_select "input#plant_quantity[name=?]", "plant[quantity]"
      assert_select "textarea#plant_notes[name=?]", "plant[notes]"
    end
  end
end

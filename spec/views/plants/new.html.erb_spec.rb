require 'spec_helper'

describe "plants/new" do
  before(:each) do
    assign(:plant, stub_model(Plant,
      :lifecycle => "MyString",
      :plant_type => "MyString",
      :breed => "MyString",
      :sun_preference => "MyString",
      :soil_type => "MyString"
    ).as_new_record)
  end

  it "renders new plant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plants_path, "post" do
      assert_select "input#plant_lifecycle[name=?]", "plant[lifecycle]"
      assert_select "input#plant_plant_type[name=?]", "plant[plant_type]"
      assert_select "input#plant_breed[name=?]", "plant[breed]"
      assert_select "input#plant_sun_preference[name=?]", "plant[sun_preference]"
      assert_select "input#plant_soil_type[name=?]", "plant[soil_type]"
    end
  end
end

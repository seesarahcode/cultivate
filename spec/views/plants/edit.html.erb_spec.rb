require 'spec_helper'

describe "plants/edit" do
  before(:each) do
    @plant = assign(:plant, stub_model(Plant,
      :lifecycle => "MyString",
      :plant_type => "MyString",
      :breed => "MyString",
      :sun_preference => "MyString",
      :soil_type => "MyString"
    ))
  end

  it "renders the edit plant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plant_path(@plant), "post" do
      assert_select "input#plant_lifecycle[name=?]", "plant[lifecycle]"
      assert_select "input#plant_plant_type[name=?]", "plant[plant_type]"
      assert_select "input#plant_breed[name=?]", "plant[breed]"
      assert_select "input#plant_sun_preference[name=?]", "plant[sun_preference]"
      assert_select "input#plant_soil_type[name=?]", "plant[soil_type]"
    end
  end
end

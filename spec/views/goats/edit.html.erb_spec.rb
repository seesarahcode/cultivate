require 'spec_helper'

describe "goats/edit" do
  before(:each) do
    @goat = assign(:goat, stub_model(Goat,
      :category => "MyString",
      :name => "MyString",
      :breed => "MyString",
      :sex => "MyString",
      :description => "MyText",
      :age => "MyString"
    ))
  end

  # it "renders the edit goat form" do
  #   render

  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "form[action=?][method=?]", goat_path(@goat), "post" do
  #     assert_select "input#goat_category[name=?]", "goat[category]"
  #     assert_select "input#goat_name[name=?]", "goat[name]"
  #     assert_select "input#goat_breed[name=?]", "goat[breed]"
  #     assert_select "input#goat_sex[name=?]", "goat[sex]"
  #     assert_select "textarea#goat_description[name=?]", "goat[description]"
  #     assert_select "input#goat_age[name=?]", "goat[age]"
  #   end
  # end
end

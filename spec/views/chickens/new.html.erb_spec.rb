require 'spec_helper'

describe "chickens/new" do
  before(:each) do
    assign(:chicken, stub_model(Chicken,
      :category => "MyString",
      :name => "MyString",
      :breed => "MyString",
      :sex => "MyString",
      :description => "MyText",
      :age => "MyString"
    ).as_new_record)
  end

  # it "renders new chicken form" do
  #   render

  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "form[action=?][method=?]", chickens_path, "post" do
  #     assert_select "input#chicken_category[name=?]", "chicken[category]"
  #     assert_select "input#chicken_name[name=?]", "chicken[name]"
  #     assert_select "input#chicken_breed[name=?]", "chicken[breed]"
  #     assert_select "input#chicken_sex[name=?]", "chicken[sex]"
  #     assert_select "textarea#chicken_description[name=?]", "chicken[description]"
  #     assert_select "input#chicken_age[name=?]", "chicken[age]"
  #   end
  # end
end

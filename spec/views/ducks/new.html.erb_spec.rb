require 'spec_helper'

describe "ducks/new" do
  before(:each) do
    assign(:duck, stub_model(Duck,
      :category => "MyString",
      :name => "MyString",
      :breed => "MyString",
      :sex => "MyString",
      :description => "MyText",
      :age => "MyString"
    ).as_new_record)
  end

  # it "renders new duck form" do
  #   render

  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "form[action=?][method=?]", ducks_path, "post" do
  #     assert_select "input#duck_category[name=?]", "duck[category]"
  #     assert_select "input#duck_name[name=?]", "duck[name]"
  #     assert_select "input#duck_breed[name=?]", "duck[breed]"
  #     assert_select "input#duck_sex[name=?]", "duck[sex]"
  #     assert_select "textarea#duck_description[name=?]", "duck[description]"
  #     assert_select "input#duck_age[name=?]", "duck[age]"
  #   end
  #  end
end

require 'spec_helper'

describe "ducks/edit" do
  before(:each) do
    @duck = assign(:duck, stub_model(Duck,
      :category => "MyString",
      :name => "MyString",
      :breed => "MyString",
      :sex => "MyString",
      :description => "MyText",
      :age => "MyString"
    ))
  end

  # it "renders the edit duck form" do
  #   render

  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "form[action=?][method=?]", duck_path(@duck), "post" do
  #     assert_select "input#duck_category[name=?]", "duck[category]"
  #     assert_select "input#duck_name[name=?]", "duck[name]"
  #     assert_select "input#duck_breed[name=?]", "duck[breed]"
  #     assert_select "input#duck_sex[name=?]", "duck[sex]"
  #     assert_select "textarea#duck_description[name=?]", "duck[description]"
  #     assert_select "input#duck_age[name=?]", "duck[age]"
  #   end
  # end
end

require 'spec_helper'

describe "pigs/edit" do
  before(:each) do
    @pig = assign(:pig, stub_model(Pig,
      :category => "MyString",
      :name => "MyString",
      :breed => "MyString",
      :sex => "MyString",
      :description => "MyText",
      :age => "MyString"
    ))
  end

  # it "renders the edit pig form" do
  #   render

  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "form[action=?][method=?]", pig_path(@pig), "post" do
  #     assert_select "input#pig_category[name=?]", "pig[category]"
  #     assert_select "input#pig_name[name=?]", "pig[name]"
  #     assert_select "input#pig_breed[name=?]", "pig[breed]"
  #     assert_select "input#pig_sex[name=?]", "pig[sex]"
  #     assert_select "textarea#pig_description[name=?]", "pig[description]"
  #     assert_select "input#pig_age[name=?]", "pig[age]"
  #   end
  # end
end

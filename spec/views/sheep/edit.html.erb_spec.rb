require 'spec_helper'

describe "sheep/edit" do
  before(:each) do
    @sheep = assign(:sheep, stub_model(Sheep,
      :category => "MyString",
      :name => "MyString",
      :breed => "MyString",
      :sex => "MyString",
      :description => "MyText",
      :age => "MyString"
    ))
  end

  # it "renders the edit sheep form" do
  #   render

  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "form[action=?][method=?]", sheep_path(@sheep), "post" do
  #     assert_select "input#sheep_category[name=?]", "sheep[category]"
  #     assert_select "input#sheep_name[name=?]", "sheep[name]"
  #     assert_select "input#sheep_breed[name=?]", "sheep[breed]"
  #     assert_select "input#sheep_sex[name=?]", "sheep[sex]"
  #     assert_select "textarea#sheep_description[name=?]", "sheep[description]"
  #     assert_select "input#sheep_age[name=?]", "sheep[age]"
  #   end
  # end
end

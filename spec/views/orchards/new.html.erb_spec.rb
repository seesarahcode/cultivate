require 'spec_helper'

describe "orchards/new" do
  before(:each) do
    assign(:orchard, stub_model(Orchard,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new orchard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orchards_path, "post" do
      assert_select "input#orchard_name[name=?]", "orchard[name]"
      assert_select "input#orchard_description[name=?]", "orchard[description]"
    end
  end
end

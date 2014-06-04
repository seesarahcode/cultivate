require 'spec_helper'

describe "orchards/edit" do
  before(:each) do
    @orchard = assign(:orchard, stub_model(Orchard,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit orchard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orchard_path(@orchard), "post" do
      assert_select "input#orchard_name[name=?]", "orchard[name]"
      assert_select "input#orchard_description[name=?]", "orchard[description]"
    end
  end
end

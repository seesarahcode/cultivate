require 'spec_helper'

describe "trees/new" do
  before(:each) do
    assign(:tree, stub_model(Tree,
      :type => "",
      :variety => "MyString",
      :tree_source => "MyString",
      :plant_quantity => 1,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new tree form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trees_path, "post" do
      assert_select "input#tree_type[name=?]", "tree[type]"
      assert_select "input#tree_variety[name=?]", "tree[variety]"
      assert_select "input#tree_tree_source[name=?]", "tree[tree_source]"
      assert_select "input#tree_plant_quantity[name=?]", "tree[plant_quantity]"
      assert_select "textarea#tree_notes[name=?]", "tree[notes]"
    end
  end
end

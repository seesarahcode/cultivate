require 'spec_helper'

describe "pigs/new" do
  before(:each) do
    assign(:pig, stub_model(Pig,
      :category => "MyString",
      :name => "MyString",
      :breed => "MyString",
      :sex => "MyString",
      :description => "MyText",
      :age => "MyString"
    ).as_new_record)
  end


end

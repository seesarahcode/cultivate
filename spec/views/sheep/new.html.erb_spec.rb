require 'spec_helper'

describe "sheep/new" do
  before(:each) do
    assign(:sheep, stub_model(Sheep,
      :category => "MyString",
      :name => "MyString",
      :breed => "MyString",
      :sex => "MyString",
      :description => "MyText",
      :age => "MyString"
    ).as_new_record)
  end


end

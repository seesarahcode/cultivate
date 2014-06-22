require 'spec_helper'

describe "plants/new" do
  before(:each) do
    assign(:plant, stub_model(Plant,
      :garden_id => 1,
      :family => "MyString",
      :variety => "MyString",
      :seed_source => "MyString",
      :quantity => 1,
      :notes => "MyText"
    ).as_new_record)
  end


end

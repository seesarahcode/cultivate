require 'spec_helper'

describe "plants/edit" do
  before(:each) do
    @plant = assign(:plant, stub_model(Plant,
      :garden_id => 1,
      :family => "MyString",
      :variety => "MyString",
      :seed_source => "MyString",
      :quantity => 1,
      :notes => "MyText"
    ))
  end

end

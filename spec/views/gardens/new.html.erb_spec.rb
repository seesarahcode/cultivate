require 'spec_helper'

describe "gardens/new" do
  before(:each) do
    assign(:garden, stub_model(Garden,
      :season => "MyString",
      :year => "MyString",
      :area => "MyString"
    ).as_new_record)
  end

end

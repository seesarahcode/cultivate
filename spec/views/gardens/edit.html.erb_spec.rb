require 'spec_helper'

describe "gardens/edit" do
  before(:each) do
    @garden = assign(:garden, stub_model(Garden,
      :season => "MyString",
      :year => 1,
      :name => "MyString",
      :description => "MyString"
    ))
  end

end

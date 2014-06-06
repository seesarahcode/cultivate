require 'spec_helper'

describe "pigs/show" do
  before(:each) do
    @pig = assign(:pig, stub_model(Pig,
      :category => "Category",
      :name => "Name",
      :breed => "Breed",
      :sex => "Sex",
      :description => "MyText",
      :age => "Age"
    ))
  end

end

require 'spec_helper'

describe "pigs/index" do
  before(:each) do
    assign(:pigs, [
      stub_model(Pig,
        :category => "Category",
        :name => "Name",
        :breed => "Breed",
        :sex => "Sex",
        :description => "MyText",
        :age => "Age"
      ),
      stub_model(Pig,
        :category => "Category",
        :name => "Name",
        :breed => "Breed",
        :sex => "Sex",
        :description => "MyText",
        :age => "Age"
      )
    ])
  end

 
end

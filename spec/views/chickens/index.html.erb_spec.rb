require 'spec_helper'

describe "chickens/index" do
  before(:each) do
    assign(:chickens, [
      stub_model(Chicken,
        :category => "Category",
        :name => "Name",
        :breed => "Breed",
        :sex => "Sex",
        :description => "MyText",
        :age => "Age"
      ),
      stub_model(Chicken,
        :category => "Category",
        :name => "Name",
        :breed => "Breed",
        :sex => "Sex",
        :description => "MyText",
        :age => "Age"
      )
    ])
  end

  # it "renders a list of chickens" do
  #   render
  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "tr>td", :text => "Category".to_s, :count => 2
  #   assert_select "tr>td", :text => "Name".to_s, :count => 2
  #   assert_select "tr>td", :text => "Breed".to_s, :count => 2
  #   assert_select "tr>td", :text => "Sex".to_s, :count => 2
  #   assert_select "tr>td", :text => "MyText".to_s, :count => 2
  #   assert_select "tr>td", :text => "Age".to_s, :count => 2
  # end
end

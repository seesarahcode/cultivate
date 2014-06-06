require 'spec_helper'

describe "goats/show" do
  before(:each) do
    @goat = assign(:goat, stub_model(Goat,
      :category => "Category",
      :name => "Name",
      :breed => "Breed",
      :sex => "Sex",
      :description => "MyText",
      :age => "Age"
    ))
  end

  # it "renders attributes in <p>" do
  #   render
  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   rendered.should match(/Category/)
  #   rendered.should match(/Name/)
  #   rendered.should match(/Breed/)
  #   rendered.should match(/Sex/)
  #   rendered.should match(/MyText/)
  #   rendered.should match(/Age/)
  # end
end

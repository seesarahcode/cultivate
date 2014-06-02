require 'spec_helper'

describe "/gardens" do
  before(:each) do
    assign(:gardens, [
      stub_model(Garden,
        :season => "Season",
        :year => "Year",
        :area => "Area")
    ])
  end


end

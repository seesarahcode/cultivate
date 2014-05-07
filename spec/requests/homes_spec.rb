require 'spec_helper'

describe "Home" do

  describe "#index" do

    it "should have the title 'Cultivate'" do
      visit '/'
      expect(page).to have_title('Cultivate')
    end
    
  end
end

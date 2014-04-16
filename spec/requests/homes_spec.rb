require 'spec_helper'

describe "Home" do

  describe "#index" do

    it "should have the title 'Cultivate.land'" do
      visit '/'
      expect(page).to have_title('Cultivate.land')
    end
  end
end

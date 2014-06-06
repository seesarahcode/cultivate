require 'spec_helper'

describe Goat do
  describe "#new" do
		it "should have a valid factory" do
			FactoryGirl.create(:goat).should be_valid
		end
	end
end

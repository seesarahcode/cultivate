require 'spec_helper'

describe Chicken do
  describe "#new" do
		it "should have a valid factory" do
			FactoryGirl.create(:chicken).should be_valid
		end
	end
end

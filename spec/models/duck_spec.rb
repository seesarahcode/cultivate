require 'spec_helper'

describe Duck do
  describe "#new" do
		it "should have a valid factory" do
			FactoryGirl.create(:duck).should be_valid
		end
	end
end

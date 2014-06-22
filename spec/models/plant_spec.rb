require 'spec_helper'

describe Plant do
  describe "#new" do
		it "should have a valid factory" do
			FactoryGirl.create(:plant).should be_valid
		end
	end
end

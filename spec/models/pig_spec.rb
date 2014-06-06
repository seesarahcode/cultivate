require 'spec_helper'

describe Pig do
  describe "#new" do
		it "should have a valid factory" do
			FactoryGirl.create(:pig).should be_valid
		end
	end
end

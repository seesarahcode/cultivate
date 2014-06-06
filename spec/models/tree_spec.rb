require 'spec_helper'

describe Tree do
  describe "#new" do
		it "should have a valid factory" do
			FactoryGirl.create(:tree).should be_valid
		end
	end

end

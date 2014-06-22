require 'spec_helper'

describe Garden do
  describe "#new" do
		it "has a valid factory" do
			FactoryGirl.create(:garden).should be_valid
		end
	end
end

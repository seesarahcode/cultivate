require 'spec_helper'

describe Sheep do
  describe "#new" do
		it "should have a valid factory" do
			FactoryGirl.create(:sheep).should be_valid
		end
	end
end

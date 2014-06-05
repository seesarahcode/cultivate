require 'spec_helper'

describe Orchard do
  	describe "#new" do
		it "has a valid factory" do
			FactoryGirl.create(:orchard).should be_valid
		end

	end

end

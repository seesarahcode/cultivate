require 'spec_helper'


describe Plant do

	describe "#new" do
		it "should have a valid factory" do
			FactoryGirl.create(:plant).should be_valid
		end

		it "is invalid without a type" do
			FactoryGirl.build(:plant, type: nil).should_not be_valid 
		end

		it "is invalid without a plant date" do
			FactoryGirl.build(:plant, plant_date: nil).should_not be_valid
		end
	end


end
require 'spec_helper'
# Model specs should focus on data validation &
# whether class/instance methods perform as expected

describe Garden do
  
	describe "#new" do
		it "has a valid factory" do
			FactoryGirl.create(:garden).should be_valid
		end

		it "is invalid without a year" do
			FactoryGirl.build(:garden, year: nil).should_not be_valid 
		end

		it "is invalid without a season" do
			FactoryGirl.build(:garden,clear season: nil).should_not be_valid
		end
	end

	# describe "#name" do
	# 	it "returns the season and year as a string" do 
	# 		garden = FactoryGirl.create(:garden, season: "Winter", year: 2014)
	# 		garden.name.should eq "Winter 2014"
	# 	end
	# end

end

require 'spec_helper'

describe User do
  it "has a valid factory" do
		FactoryGirl.create(:user).should be_valid
	end

	describe "signing up" do
		context "with invalid information" do
			it "is invalid without an email address" do 
				FactoryGirl.build(:user, email: nil).should_not be_valid
			end

			it "is invalid without a password" do 
				FactoryGirl.build(:user, password: nil).should_not be_valid
			end

			it "does not accept a password less than 6 characters long" do
				FactoryGirl.build(:user, password: "12345").should_not be_valid
			end

			it "does not accept a password over 42 characters long" do
				FactoryGirl.build(:user, password: "123456789123456789123456789123456789123456789123456789123456789123456789123456789123456789").should_not be_valid
			end
		end
		
		context "with valid information" do
			it "is valid with a unique email address" do
				FactoryGirl.create(:user).should be_valid
			end

			it "is valid with a password" do 
				FactoryGirl.build(:user).should be_valid
			end

			it "accepts a password more than 6 characters long" do
				FactoryGirl.build(:user, password: "12345678", password_confirmation: "12345678").should be_valid
			end
		end
	end

end

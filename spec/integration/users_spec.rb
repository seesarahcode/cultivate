require 'spec_helper'

describe "Users Integration" do
	
	context "#new" do
		
		before :each do 
			visit new_user_registration_url
		end

		it "should tell users about the required email field" do
			fill_in "Password", with: "Th1s1sMyDe5ign"
			fill_in "Password confirmation", with: "Th1s1sMyDe5ign"
			click_button "Sign up"
			page.should have_content "Email can't be blank"
		end

		it "should tell users about the required password field" do
			fill_in "Email", with: "willgraham@example.com"
			fill_in "Password confirmation", with: "Th1s1sMyDe5ign"
			click_button "Sign up"
			page.should have_content "Password can't be blank"
		end

		it "should tell users about the required password confirmation field" do
			fill_in "Email", with: "willgraham@example.com"
			fill_in "Password", with: "Th1s1sMyDe5ign"
			click_button "Sign up"
			page.should have_content "Password confirmation doesn't match Password"
		end

	end

end
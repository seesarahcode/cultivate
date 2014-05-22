require 'spec_helper'

# Based on help from: http://robots.thoughtbot.com/rspec-integration-tests-with-capybara

feature "Visitor signs up" do
	scenario 'with valid email and password' do
		sign_up_with 'farmer_mary@example.com', 'password', 'password'
		expect(page).to have_content('')
	end

	scenario 'with invalid email' do
		sign_up_with 'bad_email', 'password', 'password'
		expect(page).to have_content('Sign in')
	end

	scenario 'with blank password' do
		sign_up_with 'farmer_mary@example.com', '', 'password'
		expect(page).to have_content('Sign in')
	end

	scenario 'with blank password confirmation' do
		sign_up_with 'farmer_mary@example.com', 'password', ''
		expect(page).to have_content('Sign in')
	end

	def sign_up_with(email, password, password_confirmation)
		visit new_user_registration_path
		fill_in 'Email', with: email
		fill_in 'Password', with: password
		fill_in 'Password confirmation', with: password_confirmation
		click_button 'Sign up'
	end
	
end
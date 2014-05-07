require 'spec_helper'

describe User do

	context "when signing up" do

		describe "with valid information" do
			subject { User.new(name: "Sarah", email: "test@example.com") }
			it { should be_valid }
		end

		describe "with invalid information" do
			subject { User.new(name: " ", email: " ") }
			it { should be_invalid }
		end

	end

end

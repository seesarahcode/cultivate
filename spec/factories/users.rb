FactoryGirl.define do
 	factory :user do |u|
	  u.email                 "example@example.com"
 	 	u.password              "example"
 		u.password_confirmation "example"
	end 
end
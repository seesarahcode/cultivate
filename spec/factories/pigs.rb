# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pig do
    category "For Sale/Harvest"
    name "none"
    birthdate "2014-06-05"
    breed "Berkshire"
    sex "Female"
    description "Good breeder."
    age "1 year"
  end
end

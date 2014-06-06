# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goat do
    category "Pet"
    name "Houdini"
    birthdate "2014-06-05"
    breed "Cashmere"
    sex "Male"
    description "Master escape artist."
    age "3 years"
  end
end

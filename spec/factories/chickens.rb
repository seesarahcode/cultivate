# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :chicken do
    category "Pet"
    name "Dolly Parton"
    birthdate "2014-06-05"
    breed "Amercauna"
    sex "Female"
    description "Feisty little mama."
    age "1 year"
  end
end

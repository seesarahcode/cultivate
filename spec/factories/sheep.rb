# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sheep do
    category "Pet"
    name "Baaaaaaaaahb"
    birthdate "2014-06-05"
    breed "Merino"
    sex "Female"
    description "Stubborn, stupid, but the softest wool you'll find."
    age "3 years"
    last_sheer "2014-05-05"
  end
end

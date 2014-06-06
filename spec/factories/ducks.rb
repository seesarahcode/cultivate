# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :duck do
    category "Pet"
    name "Daffy"
    birthdate "2014-06-05"
    breed "Pekin"
    sex "Male"
    description "A mild-mannered mallard."
    age "6 months"
  end
end

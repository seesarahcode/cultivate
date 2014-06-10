# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :plant do
    garden_id 1
    family "MyString"
    variety "MyString"
    seed_source "MyString"
    quantity 1
    notes "MyText"
    plant_date "2014-06-08"
  end
end

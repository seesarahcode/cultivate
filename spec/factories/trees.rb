# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tree do
    type ""
    variety "MyString"
    tree_source "MyString"
    plant_date "2014-06-02"
    plant_quantity 1
    notes "MyText"
  end
end

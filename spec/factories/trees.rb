# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tree do
    tree_type "Lime"
    variety "Keffir"
    tree_source "Farmer Bill's"
    plant_date "2014-06-02"
    plant_quantity 1
    notes "Composted at planting."
    orchard_id 1
  end
end

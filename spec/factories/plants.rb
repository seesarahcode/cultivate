FactoryGirl.define do	
	factory :plant do |p|
		p.plant_type							"Tomato"
		p.variety						"Brandywine"
		p.seed_source				"Baker Creek Seeds"
		p.plant_date				"May 2, 2014"
		p.plant_quantity		24
		p.notes							"Sprinkled over open soil, watered."
		p.garden_id					"1"
		p.id								"1"
	end
end
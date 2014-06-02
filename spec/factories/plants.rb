FactoryGirl.define do	
	factory :plant do |p|
		p.lifecycle					"Annual"
		p.plant_type				"Tomato"
		p.breed							"Brandywine"
		p.sun_preference		"Full sun"
		p.soil_type					"Acidic, well-drained"
		p.garden_id					"1"
		p.id								"1"
	end
end
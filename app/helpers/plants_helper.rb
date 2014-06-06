module PlantsHelper


	def harvest_date(plant)
		if plant.plant_date
			date = plant.plant_date 
			harvest_date = date + 80.days
			"#{harvest_date.strftime("%B %d")}"
		else
			""
		end
	end

end

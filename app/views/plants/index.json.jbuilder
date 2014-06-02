json.array!(@plants) do |plant|
  json.extract! plant, :id, :type, :variety, :seed_source, :plant_date, :plant_quantity, :notes, :garden_id
  json.url plant_url(plant, format: :json)
end

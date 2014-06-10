json.array!(@plants) do |plant|
  json.extract! plant, :id, :garden_id, :family, :variety, :seed_source, :quantity, :notes, :plant_date
  json.url plant_url(plant, format: :json)
end

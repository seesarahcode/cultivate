json.array!(@plants) do |plant|
  json.extract! plant, :id, :lifecycle, :plant_type, :breed, :sun_preference, :soil_type
  json.url plant_url(plant, format: :json)
end

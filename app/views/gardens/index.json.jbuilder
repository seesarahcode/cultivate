json.array!(@gardens) do |garden|
  json.extract! garden, :id, :season, :year, :name, :description
  json.url garden_url(garden, format: :json)
end

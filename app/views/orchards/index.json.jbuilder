json.array!(@orchards) do |orchard|
  json.extract! orchard, :id, :name, :description
  json.url orchard_url(orchard, format: :json)
end

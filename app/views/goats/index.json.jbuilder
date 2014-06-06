json.array!(@goats) do |goat|
  json.extract! goat, :id, :category, :name, :birthdate, :breed, :sex, :description, :age
  json.url goat_url(goat, format: :json)
end

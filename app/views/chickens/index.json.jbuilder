json.array!(@chickens) do |chicken|
  json.extract! chicken, :id, :category, :name, :birthdate, :breed, :sex, :description, :age
  json.url chicken_url(chicken, format: :json)
end

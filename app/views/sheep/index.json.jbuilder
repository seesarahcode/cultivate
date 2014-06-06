json.array!(@sheep) do |sheep|
  json.extract! sheep, :id, :category, :name, :birthdate, :breed, :sex, :description, :age, :last_sheer
  json.url sheep_url(sheep, format: :json)
end

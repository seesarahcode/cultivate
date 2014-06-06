json.array!(@ducks) do |duck|
  json.extract! duck, :id, :category, :name, :birthdate, :breed, :sex, :description, :age
  json.url duck_url(duck, format: :json)
end

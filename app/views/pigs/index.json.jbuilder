json.array!(@pigs) do |pig|
  json.extract! pig, :id, :category, :name, :birthdate, :breed, :sex, :description, :age
  json.url pig_url(pig, format: :json)
end

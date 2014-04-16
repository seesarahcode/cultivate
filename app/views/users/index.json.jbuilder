json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :bio, :location
  json.url user_url(user, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :id, :handle, :password, :email, :age, :gender, :rel_type, :location, :radius
  json.url user_url(user, format: :json)
end

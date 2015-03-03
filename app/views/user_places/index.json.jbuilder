json.array!(@user_places) do |user_place|
  json.extract! user_place, :id, :user_id, :place_id, :desc, :rating
  json.url user_place_url(user_place, format: :json)
end

json.array!(@user_place_categories) do |user_place_category|
  json.extract! user_place_category, :id, :userplace_id, :placecat_id
  json.url user_place_category_url(user_place_category, format: :json)
end

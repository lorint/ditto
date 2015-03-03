json.array!(@user_place_category_matches) do |user_place_category_match|
  json.extract! user_place_category_match, :id, :match_id, :upc_id
  json.url user_place_category_match_url(user_place_category_match, format: :json)
end

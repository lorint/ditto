json.array!(@matches) do |match|
  json.extract! match, :id, :user1_id, :user2_id, :upcm_id, :user1_rslt, :user2_rslt
  json.url match_url(match, format: :json)
end

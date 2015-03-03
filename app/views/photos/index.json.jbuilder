json.array!(@photos) do |photo|
  json.extract! photo, :id, :img_id, :img_type, :url
  json.url photo_url(photo, format: :json)
end

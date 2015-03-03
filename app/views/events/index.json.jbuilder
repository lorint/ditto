json.array!(@events) do |event|
  json.extract! event, :id, :place_id, :name, :desc
  json.url event_url(event, format: :json)
end

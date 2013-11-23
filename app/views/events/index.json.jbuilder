json.array!(@events) do |event|
  json.extract! event, :name, :lat, :lon, :radius, :description, :event_url, :time
  json.url event_url(event, format: :json)
end

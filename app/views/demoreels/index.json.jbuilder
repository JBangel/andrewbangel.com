json.array!(@demoreels) do |demoreel|
  json.extract! demoreel, :id, :video, :resume, :breakdown
  json.url demoreel_url(demoreel, format: :json)
end

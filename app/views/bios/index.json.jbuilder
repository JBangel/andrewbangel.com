json.array!(@bios) do |bio|
  json.extract! bio, :id, :title, :body, :active
  json.url bio_url(bio, format: :json)
end

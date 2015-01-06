json.array!(@works) do |work|
  json.extract! work, :id, :title, :video, :description
  json.url work_url(work, format: :json)
end

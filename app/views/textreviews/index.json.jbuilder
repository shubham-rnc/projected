json.array!(@textreviews) do |textreview|
  json.extract! textreview, :id, :body
  json.url textreview_url(textreview, format: :json)
end

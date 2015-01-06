json.array!(@tests) do |test|
  json.extract! test, :id, :test1, :test2
  json.url test_url(test, format: :json)
end

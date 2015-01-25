json.array!(@institutes) do |institute|
  json.extract! institute, :id, :name
  json.url institute_url(institute, format: :json)
end

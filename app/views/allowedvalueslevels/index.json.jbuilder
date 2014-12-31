json.array!(@allowedvalueslevels) do |allowedvalueslevel|
  json.extract! allowedvalueslevel, :id, :values
  json.url allowedvalueslevel_url(allowedvalueslevel, format: :json)
end

json.array!(@coursereviews) do |coursereview|
  json.extract! coursereview, :id, :body, :alumni, :coursename, :user_id, :institutehandler_id
  json.url coursereview_url(coursereview, format: :json)
end

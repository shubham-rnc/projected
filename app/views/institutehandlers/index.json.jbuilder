json.array!(@institutehandlers) do |institutehandler|
  json.extract! institutehandler, :id, :name, :affiliation, :Established, :affiliation, :type, :city, :state, :country, :address, :descintroduction, :descacademics, :descinfra, :desceaa, :descnotablesuccess, :descmotto, :desccampus, :latitute, :longitude, :accomodation, :website
  json.url institutehandler_url(institutehandler, format: :json)
end

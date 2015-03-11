
require 'elasticsearch'
require 'hashie'

class SearchController < ApplicationController

	class << self
	    attr_accessor :INDEX_NAME
	    attr_accessor :table_name_in_ES
	  end
	  def my_method
	    self.class.INDEX_NAME = "projected"
	    self.class.table_name_in_ES = [:college,:course]
	  end

	def search
		client = Elasticsearch::Client.new url: 'http://localhost:9200'
		search_for=params[:q]

		if search_for == nil
			@res = []
		else
			@res = client.search index: "projected", type: ["college","course"], size: 10, body: { query: { multi_match: { fields: [ :name, :course, :state, :city, :stream, :slug ] , query: search_for, fuzziness: 2 } } }
      	end
      # 		"query": {
      #   		"multi_match": {
      #     			"fields":  [ "name", "course","state","city","stream","slug" ],
      #     			"query":     search_for,
      #     			"fuzziness": 2
      #   			}
      # 			}
    		# }
      # { query: { match: { city: search_for } } }
      # { query: { multi_match: { fields: [ "name", "course","state","city","stream","slug" ] , query: search_for, fuzziness: 2 } } }
	end
end

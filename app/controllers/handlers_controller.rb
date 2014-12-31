class HandlersController < ApplicationController
	def index
	@listings = Handler.all
	end

end

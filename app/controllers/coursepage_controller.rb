class CoursepageController < ApplicationController
	def show
		@handler = Handler.find_by(uniquenesscheck: params[:slug])
	end
end

class InstitutepageController < ApplicationController
	def show
		@institute = Institutehandler.find_by(slug: params[:slug])
		@textreview = Textreview.new
		@textreview.institutehandler = @institute	
	end
end

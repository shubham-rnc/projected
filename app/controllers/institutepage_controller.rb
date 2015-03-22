class InstitutepageController < ApplicationController
	def show
		@institute = Institutehandler.find_by(slug: params[:slug])
		@coursereview  = Coursereview.new
		@coursereview.institutehandler 	= @institute
		@courses = @institute.handlers
		@listofcourses = @courses.pluck(:course)
	end
end

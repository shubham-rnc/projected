class HandlersController < ApplicationController
	def index
	@listings = Handler.all
    @active = 0
    @inactive = 0
    @listings.each do |listing|
      if listing.activation 
        @active = @active+1
      else
        @inactive = @inactive+1
      end
    end
	end

	def new
		@handler = Handler.new
	end

	def show
    @handler = Handler.find(params[:id])
  	end

	def create
    	@handler = Handler.new(handler_params)

    	respond_to do |format|
      		if @handler.save
        		format.html { redirect_to @handler, notice: 'Listing was successfully created.' }
        		format.json { render :show, status: :created, location: @handler }
      		else
        		format.html { render :new }
        		format.json { render json: @handler.errors, status: :unprocessable_entity }
      		end
    	end
  	end

  def edit
    @handler = Handler.find(params[:id])
  end

  def update
    @handler = Handler.find(params[:id])
 
    if @handler.update(handler_params)
      redirect_to @handler
    else
      render 'edit'
    end
  end

  def destroy
    @handler = Handler.find(params[:id])

    @handler.destroy
    respond_to do |format|
      format.html { redirect_to handlers_url, notice: 'Listings was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    @items = Handler.search(params[:search])
    @active = 0
    @inactive = 0
      @items.each do |listing|
        if listing.activation 
          @active = @active+1
        else
          @inactive = @inactive+1
        end
      end
  end

  private
  def handler_params
    params.require(:handler).permit(:institutehandler_id, :level, :course, :stream, :activation, :eligibility, :duration, :commencement, :averagefees, :averagebatchstrength, :descintroduction, :desccurriculum, :descfuturescope, :descinfra, :descnotableprofessors, :descinternships, :descplacements, :admission)
  end

end

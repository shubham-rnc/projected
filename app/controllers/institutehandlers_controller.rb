class InstitutehandlersController < ApplicationController
  layout 'backend'
  before_action :set_institutehandler, only: [:show, :edit, :update, :destroy]

  # GET /institutehandlers
  # GET /institutehandlers.json
  def index
    @institutehandlers = Institutehandler.all
  end

  # GET /institutehandlers/1
  # GET /institutehandlers/1.json
  def show
  end

  # GET /institutehandlers/new
  def new
    @institutehandler = Institutehandler.new
  end

  # GET /institutehandlers/1/edit
  def edit
  end

  # POST /institutehandlers
  # POST /institutehandlers.json
  def create
    @institutehandler = Institutehandler.new(institutehandler_params)

    respond_to do |format|
      if @institutehandler.save
        format.html { redirect_to @institutehandler, notice: 'Institutehandler was successfully created.' }
        format.json { render :show, status: :created, location: @institutehandler }
      else
        format.html { render :new }
        format.json { render json: @institutehandler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institutehandlers/1
  # PATCH/PUT /institutehandlers/1.json
  def update
    respond_to do |format|
      if @institutehandler.update(institutehandler_params)
        format.html { redirect_to @institutehandler, notice: 'Institutehandler was successfully updated.' }
        format.json { render :show, status: :ok, location: @institutehandler }
      else
        format.html { render :edit }
        format.json { render json: @institutehandler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institutehandlers/1
  # DELETE /institutehandlers/1.json
  def destroy
    @institutehandler.destroy
    respond_to do |format|
      format.html { redirect_to institutehandlers_url, notice: 'Institutehandler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institutehandler
      @institutehandler = Institutehandler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institutehandler_params
      params.require(:institutehandler).permit(:name, :affiliation, :Established, :affiliation, :institutetype, :city, :state, :country, :address, :descintroduction, :descacademics, :descinfra, :desceaa, :descnotablesuccess, :descmotto, :desccampus, :latitute, :longitude, :accomodation, :website)
    end
end

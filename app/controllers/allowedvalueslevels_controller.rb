class AllowedvalueslevelsController < ApplicationController
  layout 'backend'
  before_action :set_allowedvalueslevel, only: [:show, :edit, :update, :destroy]

  # GET /allowedvalueslevels
  # GET /allowedvalueslevels.json
  def index
    @allowedvalueslevels = Allowedvalueslevel.all
  end

  # GET /allowedvalueslevels/1
  # GET /allowedvalueslevels/1.json
  def show
  end

  # GET /allowedvalueslevels/new
  def new
    @allowedvalueslevel = Allowedvalueslevel.new
  end

  # GET /allowedvalueslevels/1/edit
  def edit
  end

  # POST /allowedvalueslevels
  # POST /allowedvalueslevels.json
  def create
    @allowedvalueslevel = Allowedvalueslevel.new(allowedvalueslevel_params)

    respond_to do |format|
      if @allowedvalueslevel.save
        format.html { redirect_to @allowedvalueslevel, notice: 'Allowedvalueslevel was successfully created.' }
        format.json { render :show, status: :created, location: @allowedvalueslevel }
      else
        format.html { render :new }
        format.json { render json: @allowedvalueslevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allowedvalueslevels/1
  # PATCH/PUT /allowedvalueslevels/1.json
  def update
    respond_to do |format|
      if @allowedvalueslevel.update(allowedvalueslevel_params)
        format.html { redirect_to @allowedvalueslevel, notice: 'Allowedvalueslevel was successfully updated.' }
        format.json { render :show, status: :ok, location: @allowedvalueslevel }
      else
        format.html { render :edit }
        format.json { render json: @allowedvalueslevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allowedvalueslevels/1
  # DELETE /allowedvalueslevels/1.json
  def destroy
    @allowedvalueslevel.destroy
    respond_to do |format|
      format.html { redirect_to allowedvalueslevels_url, notice: 'Allowedvalueslevel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allowedvalueslevel
      @allowedvalueslevel = Allowedvalueslevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allowedvalueslevel_params
      params.require(:allowedvalueslevel).permit(:values)
    end
end

class CoursereviewsController < ApplicationController
  before_action :set_coursereview, only: [:show, :edit, :update, :destroy]

  # GET /coursereviews
  # GET /coursereviews.json
  def index
    @coursereviews = Coursereview.all
  end

  # GET /coursereviews/1
  # GET /coursereviews/1.json
  def show
  end

  # GET /coursereviews/new
  def new
    @coursereview = Coursereview.new
  end

  # GET /coursereviews/1/edit
  def edit
  end

  # POST /coursereviews
  # POST /coursereviews.json
  def create
    @coursereview = Coursereview.new(coursereview_params)
    @coursereview.user_id = current_user.id
    respond_to do |format|
      if @coursereview.save
        format.html { redirect_to @coursereview, notice: 'Coursereview was successfully created.' }
        format.js { }
      else
        format.html { render :new }
        format.js { }
      end
    end
  end

  # PATCH/PUT /coursereviews/1
  # PATCH/PUT /coursereviews/1.json
  def update
    respond_to do |format|
      if @coursereview.update(coursereview_params)
        format.html { redirect_to @coursereview, notice: 'Coursereview was successfully updated.' }
        format.json { render :show, status: :ok, location: @coursereview }
      else
        format.html { render :edit }
        format.json { render json: @coursereview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursereviews/1
  # DELETE /coursereviews/1.json
  def destroy
    @coursereview.destroy
    respond_to do |format|
      format.html { redirect_to coursereviews_url, notice: 'Coursereview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coursereview
      @coursereview = Coursereview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coursereview_params
      params.require(:coursereview).permit(:body, :alumni, :coursename, :user_id, :institutehandler_id)
    end
end

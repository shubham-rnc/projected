class TextreviewsController < ApplicationController
  before_action :set_textreview, only: [:show, :edit, :update, :destroy]

  # GET /textreviews
  # GET /textreviews.json
  def index
    @textreviews = Textreview.all
  end

  # GET /textreviews/1
  # GET /textreviews/1.json
  def show
  end

  # GET /textreviews/new
  def new
    @textreview = Textreview.new
  end

  # GET /textreviews/1/edit
  def edit
  end

  # POST /textreviews
  # POST /textreviews.json
  def create
    @textreview = Textreview.new(textreview_params)

    respond_to do |format|
      if @textreview.save
        format.html { redirect_to @textreview, notice: 'Textreview was successfully created.' }
        format.json { render :show, status: :created, location: @textreview }
      else
        format.html { render :new }
        format.json { render json: @textreview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /textreviews/1
  # PATCH/PUT /textreviews/1.json
  def update
    respond_to do |format|
      if @textreview.update(textreview_params)
        format.html { redirect_to @textreview, notice: 'Textreview was successfully updated.' }
        format.json { render :show, status: :ok, location: @textreview }
      else
        format.html { render :edit }
        format.json { render json: @textreview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textreviews/1
  # DELETE /textreviews/1.json
  def destroy
    @textreview.destroy
    respond_to do |format|
      format.html { redirect_to textreviews_url, notice: 'Textreview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_textreview
      @textreview = Textreview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def textreview_params
      params.require(:textreview).permit(:body, :futurescope, :bottomline, :notablealumnies)
    end
end

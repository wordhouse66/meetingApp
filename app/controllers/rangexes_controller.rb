class RangexesController < ApplicationController
  before_action :set_rangex, only: [:show, :edit, :update, :destroy]

  # GET /rangexes
  # GET /rangexes.json
  def index
    @rangexes = Rangex.all
  end

  # GET /rangexes/1
  # GET /rangexes/1.json
  def show
  end

  # GET /rangexes/new
  def new
    @rangex = Rangex.new
  end

  # GET /rangexes/1/edit
  def edit
  end

  # POST /rangexes
  # POST /rangexes.json
  def create
    @rangex = Rangex.new(rangex_params)

    respond_to do |format|
      if @rangex.save
        format.html { redirect_to @rangex, notice: 'Rangex was successfully created.' }
        format.json { render :show, status: :created, location: @rangex }
      else
        format.html { render :new }
        format.json { render json: @rangex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rangexes/1
  # PATCH/PUT /rangexes/1.json
  def update
    respond_to do |format|
      if @rangex.update(rangex_params)
        format.html { redirect_to @rangex, notice: 'Rangex was successfully updated.' }
        format.json { render :show, status: :ok, location: @rangex }
      else
        format.html { render :edit }
        format.json { render json: @rangex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rangexes/1
  # DELETE /rangexes/1.json
  def destroy
    @rangex.destroy
    respond_to do |format|
      format.html { redirect_to rangexes_url, notice: 'Rangex was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rangex
      @rangex = Rangex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rangex_params
      params.require(:rangex).permit(:start, :finish)
    end
end

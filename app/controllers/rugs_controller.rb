class RugsController < ApplicationController
  before_action :set_rug, only: [:show, :edit, :update, :destroy]

  # GET /rugs
  # GET /rugs.json
  def index
    @rugs = Rug.all
  end

  # GET /rugs/1
  # GET /rugs/1.json
  def show
  end

  # GET /rugs/new
  def new
    @rug = Rug.new
  end

  # GET /rugs/1/edit
  def edit
  end

  # POST /rugs
  # POST /rugs.json
  def create
    @rug = Rug.new(rug_params)

    respond_to do |format|
      if @rug.save
        format.html { redirect_to @rug, notice: 'Rug was successfully created.' }
        format.json { render :show, status: :created, location: @rug }
      else
        format.html { render :new }
        format.json { render json: @rug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rugs/1
  # PATCH/PUT /rugs/1.json
  def update
    respond_to do |format|
      if @rug.update(rug_params)
        format.html { redirect_to @rug, notice: 'Rug was successfully updated.' }
        format.json { render :show, status: :ok, location: @rug }
      else
        format.html { render :edit }
        format.json { render json: @rug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rugs/1
  # DELETE /rugs/1.json
  def destroy
    @rug.destroy
    respond_to do |format|
      format.html { redirect_to rugs_url, notice: 'Rug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rug
      @rug = Rug.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rug_params
      params.require(:rug).permit(:name, :date, :datetimes)
    end
end

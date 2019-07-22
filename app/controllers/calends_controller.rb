class CalendsController < ApplicationController
  before_action :set_calend, only: [:show, :edit, :update, :destroy]
  before_action :restrict_user, except: [:index, :show]
  # GET /calends
  # GET /calends.json
  def index
    @calends = Calend.all
    @meetings = Meeting.where(:user_id => current_user.id)
    @calend = Calend.new(params[:dater])
  end

  # GET /calends/1
  # GET /calends/1.json
  def show
  end

  # GET /calends/new
  def new
    @calend = Calend.new
  end

  # GET /calends/1/edit
  def edit
  end

  # POST /calends
  # POST /calends.json
  def create
    @calend = Calend.new(calend_params)

    respond_to do |format|
      if @calend.save
        format.html { redirect_to calends_url, notice: 'View Calendar below' }
        format.json { render :show, status: :created, location: @calend }
      else
        format.html { render :new }
        format.json { render json: @calend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calends/1
  # PATCH/PUT /calends/1.json
  def update
    respond_to do |format|
      if @calend.update(calend_params)
        format.html { redirect_to @calend, notice: 'Calend was successfully updated.' }
        format.json { render :show, status: :ok, location: @calend }
      else
        format.html { render :edit }
        format.json { render json: @calend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calends/1
  # DELETE /calends/1.json
  def destroy
    @calend.destroy
    respond_to do |format|
      format.html { redirect_to calends_url, notice: 'Calend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calend
      @calend = Calend.find(params[:id])
    end

    def restrict_user
      unless current_user.has_role? :admin
        redirect_to root_path,
        notice: "you can't do that"
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calend_params

      params.require(:calend).permit(:dater)
    end
end

class HomeController < ApplicationController
  def index

  	#@client = Client.find(params[:client_id])
    @meetings = Meeting.where(:user_id => current_user.id)
@calend = Calend.new(params[:dater])
  end
end

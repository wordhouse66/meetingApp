class ApplicationController < ActionController::Base
before_action :authenticate_user!
#before_action :return_to_root_if_not_signed_in
  
  def return_to_root_if_not_signed_in
  	unless user_signed_in?
  		#authenticate_user!
  		redirect_to new_user_session_path
  	end
 end



  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:first_name,:last_name,:profile_name, :phone_number, :description, :image, :location, :sex,:date_of_birth,:email,:password,:remember_me) }
    devise_parameter_sanitizer.permit(:account_update){ |u| u.permit(:first_name,:last_name,:profile_name, :phone_number, :description, :image, :location, :sex,:date_of_birth,:email,:password,:current_password) }
  end


end

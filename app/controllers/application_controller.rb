class ApplicationController < ActionController::Base
before_action :authenticate_user!



  # ... ...

  private

  



	def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:first_name,:last_name,:profile_name, :phone_number, :description, :image, :location, :sex,:date_of_birth,:email,:password,:remember_me) }
    devise_parameter_sanitizer.permit(:account_update){ |u| u.permit(:first_name,:last_name,:profile_name, :phone_number, :description, :image, :location, :sex,:date_of_birth,:email,:password,:current_password) }
  end


end

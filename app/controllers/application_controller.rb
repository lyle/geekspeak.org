class ApplicationController < ActionController::Base
  protect_from_forgery
  #filter_parameter_logging :password
  
  
  #repurposing the Users for admin athentication 
  def authenticate_admin_user!
    authenticate_user! 
    unless current_user.admin?
      flash[:alert] = "This area is restricted to administrators only."
      redirect_to "/" 
    end
  end

  def current_admin_user
    return nil if user_signed_in? && !current_user.admin? 
    current_user
  end
  
end

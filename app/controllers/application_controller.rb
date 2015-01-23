class ApplicationController < ActionController::Base
  
  before_filter :configure_permitted_parameters, if: :devise_controller?  
  before_filter :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email, :password, :remember_me)} 
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:username, :email, :password, :password_confirmation, :current_password)}
  end
   
  # This is the welcome page for autheticated users
  def after_sign_in_path_for(resource)
    user_path(:id)
  end
  
  # This will bring us back to the users#show page after logging out
  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end
      
      # My poor attempt at detecting whether the current user is an admin.
      # def admin?
      #  user.admin
      # end
end

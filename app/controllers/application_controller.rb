class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :full_name, :email, :password, :password_confirmation) }
	    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :full_name, :photo, :cover_image, :email, :password, :current_password) }
	  end
end

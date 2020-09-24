class ApplicationController < ActionController::Base
	before_action :configure_devise_parameters, if: :devise_controller?

	def configure_devise_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nom, :prenom, :telephone, :email, :password) }
	end

	def after_sign_in_path_for(resource)
	  stored_location_for(resource) || clientsession_index_path
	end
end

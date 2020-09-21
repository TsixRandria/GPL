class ApplicationController < ActionController::Base
	before_action :configure_devise_parameters, if: :devise_controller?

	def configure_devise_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |c| c.permit(:nom, :prenom, :telephone, :email, :password) }
	end

	
end

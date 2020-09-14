class ApplicationController < ActionController::Base

    before_action :configure_devise_parameters, if: :devise_controller?

    def configure_devise_parameters

        devise_parameter_sanitizer.permit(:sign_up) { |p| p.permit(:nom, :prenom, :telephone, :email, :password) }
    end
    # validates_presence_of :nom, message: "veuiller indiquer Nom"
    # validates_presence_of :prenom, message: "veuiller indiquer votre prenom"
    # validates_presence_of :telephone, message: "veiller indiquer votre numero de telephone"
end


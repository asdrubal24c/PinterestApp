class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    rescue_from CanCan::AccessDenied do |exception|
        redirect_to main_app.root_url, notice: exception.message
      end
    

    protected

    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image])
       devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image])
    end

end

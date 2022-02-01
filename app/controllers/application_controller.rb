class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name age address about_me user_type])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name age address about_me user_type])
  end
end

# PENDIENTE -> Verificar el acceso mediante los roles

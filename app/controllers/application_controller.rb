class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:photo_profil, :first_name, :last_name, :email, :password, :password_confirmation, :current_password])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:photo_profil, :first_name, :last_name])
  end
end

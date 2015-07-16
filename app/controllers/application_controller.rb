class ApplicationController < ActionController::Base
  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_devise_permitted_parameters
   registration_params = [:last_name,:first_name, :birthday, :gender,
                          :email, :password, :password_confirmation]

   if params[:action] == 'update'
     devise_parameter_sanitizer.for(:account_update) {
       |u| u.permit(registration_params << :current_password)
     }
   elsif params[:action] == 'create'
     devise_parameter_sanitizer.for(:sign_up) {
       |u| u.permit(registration_params)
     }
   end
  end
end

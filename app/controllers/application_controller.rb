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

  def authenticate_admin!
    unless user_signed_in?
      redirect_to new_user_session_path, alert: 'You must sign in first.'
    end

    unless current_user.role == 'admin'
      redirect_to root_path, alert: 'You are not permitted to view this page.'
    end
  end
end

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  
  def after_sign_in_path_for(resource)
    posts_path
  end

private
    def sign_in_required
        redirect_to new_user_session_url unless user_signed_in?
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password,:password_confirmation, :image])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password,:password_confirmation, :image])
    end

end

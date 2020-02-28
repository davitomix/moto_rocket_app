class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  helper_method %i[current_user current_user? logged_in?]
  before_action :configure_permitted_parameters, if: :devise_controller?, only: %i[create update]
  protect_from_forgery with: :exception

  # Check if the user is logged redirects if not.
  def logged_in_user
    return if user_signed_in?

    flash[:danger] = 'Please log in'
    redirect_to new_user_session_url
  end

  # Returns true if the given user is the current user.
  def current_user?(user)
    user == current_user
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email])
  end
end

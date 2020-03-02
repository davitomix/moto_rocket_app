class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  helper_method %i[current_user?]
  before_action :configure_permitted_parameters, if: :devise_controller?, only: %i[create update]
  protect_from_forgery with: :exception

  # Returns true if the given user is the current user.
  def current_user?(user)
    user == current_user
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email])
  end

  private

  # Check if the user is logged redirects if not.
  def logged_in_user
    return if user_signed_in?

    flash[:danger] = 'Please log in'
    redirect_to new_user_session_url
  end
end

class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?, only: %i[create update]
  protect_from_forgery with: :exception

  # Confirms a logged-in user.
  def logged_in_user
    unless user_signed_in?
      flash[:danger] = "Please log in."
      redirect_to new_user_session_url
    end
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

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email])
  end
end

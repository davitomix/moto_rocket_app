class UsersController < ApplicationController
  before_action :logged_in_user
  before_action :correct_user, only: %i[edit update]
  before_action :admin_user, only: :destroy

  def index
    @users = User.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.paginate(page: params[:page], per_page: 10)
    @followers = current_user.followed_by
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = 'User deleted'
    redirect_to users_url
  end

  def following
    @title = 'Following'
    @user = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page], per_page: 10)
    render 'show_follow'
  end

  def followers
    @title = 'Followers'
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page], per_page: 10)
    render 'show_follow'
  end

  private

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end

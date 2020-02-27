class UsersController < ApplicationController
  before_action :logged_in_user
  before_action :correct_user, only: %i[edit update]

  def index
    @users = User.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @user = User.find(params[:id])
  end
end

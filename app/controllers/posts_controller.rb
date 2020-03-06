class PostsController < ApplicationController
  before_action :logged_in_user, only: %i[create destroy]
  before_action :correct_user_or_admin, only: %i[destroy]

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = 'Post created!'
    elsif @post.errors.any?
      flash[:danger] = "Content can't be blank"
    else
      flash[:danger] = 'Something get wrong'
    end
    redirect_to root_url
  end

  def destroy
    @user = Post.find(params[:id]).user_id
    Post.find(params[:id]).destroy
    flash[:success] = 'Post deleted'
    redirect_to root_url
  end

  private

  def post_params
    params.require(:post).permit(:content, :picture)
  end

  # Before filters

  # Confirms the correct user to destroy.
  def correct_user_or_admin
    post = Post.find(params[:id])
    redirect_to(posts_url) unless current_user?(post.user) || current_user.admin?
  end

  # Confirms the correct user to edit and update
  def correct_user_edit
    post = Post.find(params[:id])
    redirect_to(posts_url) unless current_user?(post.user)
  end
end

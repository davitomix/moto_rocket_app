class StaticPagesController < ApplicationController
  def home
    return unless user_signed_in?

    @post = current_user.posts.build
    @feed_items = current_user.feed.show(40).paginate(page: params[:page], per_page: 10)
    @who_items = current_user.whotofollow.show(10)
  end

  def about; end

  def contact; end
end

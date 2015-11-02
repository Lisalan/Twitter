class WelcomePageController < ApplicationController
  def index
    if logged_in?
      @twitterpost = current_user.twitterposts.build 
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
end

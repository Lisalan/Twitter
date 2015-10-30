class WelcomePageController < ApplicationController
   def index
     @twitterpost = current_user.twitterposts.build if logged_in?
     @feed_items = current_user.feed.paginate(page: params[:page])
   end
end

class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :following, :followers]
  
  def new
  	@user = User.new
  end
  def show
  	@user = User.find(params[:id])
  	@twitterposts = @user.twitterposts.paginate(page: params[:page], per_page: 15)
  end

  def create
  	@user = User.new(user_params)
    if @user.save
    	log_in @user
      flash[:success] = "Welcome to the Twitter!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
    @users = User.search(params[:search]).paginate(page: params[:page], per_page: 15)
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private 
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

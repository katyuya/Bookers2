class UsersController < ApplicationController
  def top
  end

  def new
    @user = User.new
  end
  def index

  end


  def create
    user = User.new(user_params)
    user.save
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  private

  def user_params
    params.require(:user).permit(:title, :body, :profile_image, :introduction, )
  end
end

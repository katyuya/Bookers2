class UsersController < ApplicationController
  def top
  end

  def index
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def show
    @user = User.find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:title, :body)
    end
end

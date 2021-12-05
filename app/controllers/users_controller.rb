class UsersController < ApplicationController
  def top
  end

  def index
    @users = User.all
    @user = User.new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
  end
  
  private
  
  def params
end

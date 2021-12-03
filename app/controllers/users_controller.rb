class UsersController < ApplicationController
  def top
  end

  def create
  end

  def show
    @user = User.find(params[:id])
  end
end

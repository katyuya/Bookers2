class UsersController < ApplicationController


  def top
  end

  def new
    @user = User.new
  end

  def index
    @users = User.all
    @book = Book.new
    @user = User.new
    @user = @book.user
  end


  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to book_path(@book.id)
    else
      render controller: :books, action: :index
    end
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end


  private

  def user_params
    params.require(:user).permit(:title, :body, :profile_image, :introduction, )
  end
end

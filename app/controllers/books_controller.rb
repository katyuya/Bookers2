class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @user = User.find(params[:id])
  end

  def create
    @user = User.find(params[:id])
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render index
    end
  end

  def show
    @book = Book.find(params[:id])

  end

  def update
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end

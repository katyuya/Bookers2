class BooksController < ApplicationController
  def index
  end

  def create
    @book = book.new(book_params)
    @book.user_id = current_user.id
  end

  def show
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end

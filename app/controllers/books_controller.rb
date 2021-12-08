class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def create
    @book = book.new(book_params)
  end

  def show
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end

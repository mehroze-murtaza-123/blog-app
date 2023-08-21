class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:name))
    if @book.save
      redirect_to @book
    else
      render action: 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
  end
end

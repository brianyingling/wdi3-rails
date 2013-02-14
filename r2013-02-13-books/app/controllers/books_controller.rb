class BooksController < ApplicationController
  # shows all books
  def index
    @books = Book.all
  end

  # shows new books form
  def new
    @book = Book.new
  end

  # posts new books data to db
  def create
    book = Book.create(params[:book])
    redirect_to(book)
  end

  # show one book
  def show
    @book = Book.find(params[:id])
  end

  # display edit form
  def edit
    @book = Book.find(params[:id])

  end
  # post updated book data to db
  def update
    book = Book.find(params[:id])
    book.update_attributes(params[:book])
    redirect_to(book)
  end

  # delete book
  def destroy
    Book.delete(params[:id])
    redirect_to(books_path)
  end
end
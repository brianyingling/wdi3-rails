class AuthorsController < ApplicationController

  # Displays all authors
  def index
    @authors = Author.all
  end

  # Displays the new form
  def new
    @author = Author.new
  end

  # posts author info to the db
  def create
    author = Author.create(params[:author])
    redirect_to(author)
  end

  # shows an author
  def show
    @author = Author.find(params[:id])
  end

  # updates database to the db
  def update
    author = Author.find(params[:id])
    author.update_attributes(params[:author])
    redirect_to(author_path)
  end

  # shows edit to the db
  def edit
    @author = Author.find(params[:id])
  end

  # deletes an entry in the db
  def destroy
    Author.delete(params[:id])
    redirect_to(authors_path)
  end
end
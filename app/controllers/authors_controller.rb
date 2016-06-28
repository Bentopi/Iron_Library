class AuthorsController < ApplicationController
  def index
  end

  def list
    @authors = Author.all.order("last_name asc")
    @books = Book.all.order("title asc")
  end

  def show
    @author = Author.find_by id: params[:id]
  end

end

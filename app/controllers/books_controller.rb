class BooksController < ApplicationController

  before_action do
    if session[:username].nil?
      redirect_to sign_in_path, notice: "IDENTIFY YOURSELF!"
    end
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def list
    @books = Book.all.order("title asc")
  end
  
  def new
    @book = Book.new
    @book.author_id = params[:author_id]
  end

  def create
    @book = Book.new
    @book.title = params[:book][:title]
    @book.price = params[:book][:price]
    @book.photo_url = params[:book][:photo_url]
    @book.author_id = params[:book][:author_id]
    if @book.save
      redirect_to root_path, notice: "Book Created!"
    else
      render :new
    end
  end

  def edit
    @book= Book.find_by id: params[:id]
  end

  def update
    @book = Book.find_by id: params[:id]
    @book.title = params[:book][:title]
    @book.price = params[:book][:price]
    @book.photo_url = params[:book][:photo_url]
    @book.author_id = params[:book][:author_id]
    if @book.save
      redirect_to book_path(id: @book.id), notice: "Book Updated!"
    else
      render :edit
    end
  end

  def delete
    @book = Book.find_by id: params[:id]
    @book.delete
    redirect_to root_path, notice: "Book Deleted!"
  end
end

class BooksController < ApplicationController

  before_action do
    if @current_user.nil?
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

  def checkout
    @book = Book.find_by id: params[:id]
    if @book.inventory >0
      @book.inventory -= 1
      @checkout = Checkout.new
      @checkout.book_id = @book.id
      @checkout.user_id = @current_user.id
      if @book.save && @checkout.save
        redirect_to book_path(id: @book.id), notice: "Checkout Successful"
      end
    else
      redirect_to book_path(id: @book.id), notice: "Book is Out of Stock!"
    end

  end

  def checkin
    @book = Book.find_by id: params[:id]
    @checkout = Checkout.find_by user_id: @current_user.id, book_id: @book.id
    if @checkout.present?
      @checkout.destroy
      @book.inventory += 1
      if @book.save
        redirect_to book_path(id: @book.id), notice: "Check In Successful"
      end
    else
      redirect_to book_path(id: @book.id), notice: "You Haven't Checked Out This Book."
    end
  end

end

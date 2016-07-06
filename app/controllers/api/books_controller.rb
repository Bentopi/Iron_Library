class Api::BooksController < ApplicationController

  before_action do
    request.format = :json
  end

  protect_from_forgery with: :null_session

  def index
    q = Book.all
    q = q.where("title ILIKE ?", "%#{params[:query]}%") if params[:query].present?
    @books = q
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def checkout
    test_user = User.first
    @book = Book.find_by id: params[:id]
    if @book.inventory >0
      @book.inventory -= 1
      @checkout = Checkout.new
      @checkout.book_id = @book.id
      @checkout.user_id = test_user.id
      if @book.save && @checkout.save
        render :show, status: 201
      end
    else
      render json: {errors: @book.errors}, status: 422
    end

  end

  def checkin
    test_user = User.first
    @book = Book.find_by id: params[:id]
    @checkout = Checkout.find_by user_id: test_user.id, book_id: @book.id
    if @checkout.present?
      @checkout.destroy
      @book.inventory += 1
      if @book.save
        render :show, status: 201
      end
    else
      render json: {errors: @book.errors}, status: 422
    end
  end

end

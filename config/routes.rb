Rails.application.routes.draw do

  root 'authors#index'
  get 'authors/' => 'authors#list', as: :authors
  get 'authors/:id' => 'authors#show', as: :author

  get 'books/' => 'books#list', as: :books
  get 'books/new' => 'books#new', as: :new_book
  get 'books/:id' => 'books#show', as: :book
  post 'books/' => 'books#create', as: :create_book
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  patch 'books/:id' => 'books#update', as: :update_book
  delete 'books/:id' => 'books#delete', as: :delete_book

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete'

  get 'new_user' =>'users#new', as: :new_user
  post 'new_user' => 'users#create', as: :create_user

  post 'books/checkout/:id' => 'books#checkout', as: :checkout_book
  delete 'books/checkout/:id' => 'books#checkin', as: :checkin_book

  get 'api/books' => 'api/books#index', as: :api_books
  get 'api/books/:id' => 'api/books#show', as: :api_book
  post 'api/books/checkout/:id' => 'api/books#checkout'
  delete 'api/books/checkout/:id' => 'api/books#checkin'

end

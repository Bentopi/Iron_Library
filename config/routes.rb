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

  get 'new_user' =>'users#new', as: :new_user
  post 'new_user' => 'users#create', as: :create_user
end

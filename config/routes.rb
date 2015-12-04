Rails.application.routes.draw do
  root 'main#index'

  resources :books, only: [:index, :show, :create, :destroy]
  resources :finished_books

  resources :genres
end

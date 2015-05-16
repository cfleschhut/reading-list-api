Rails.application.routes.draw do
  root 'main#index'

  resources :books, only: [:index, :show, :create]
  resources :finished_books
end

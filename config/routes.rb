Rails.application.routes.draw do

  namespace :api do
    resources :books, only: [:index, :show, :create, :destroy]
    resources :finished_books
    resources :genres
  end

  root 'main#index'

end

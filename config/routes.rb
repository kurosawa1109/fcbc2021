Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  root to: "tops#index"
  resources :tops, only: :index
  resources :posts,only: [:index, :new, :create, :show, :destroy]
  resources :resutorans, only: :index
  resources :brewerys, only: :index
end

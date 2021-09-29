Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  root to: "tops#index"
  resources :tops, only: :index
  resources :posts,only: [:index, :new, :create]
  resources :resutorans, only: :index
end

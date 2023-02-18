Rails.application.routes.draw do
  # root to: "pages#home"
  devise_for :users
  root to: "pages#home"

  resources :requests, only: [:index]
  resources :video_games, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
    resources :requests, only: [:new, :create, :show]
  end
  resources :reviews, only: [:destroy]
  resources :users, only: [] do
    resources :requests, only: [:index]
  end
end

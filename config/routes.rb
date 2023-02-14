Rails.application.routes.draw do
  # root to: "pages#home"
  devise_for :users
  root to: "pages#home"
  #resources :video_games do
    resources :video_games, only: %i[index new create show] do
      resources :reviews, only: [:new, :create]
      resources :requests, only: %i[new create show]
    end
    resources :reviews, only: [:destroy]
  #end
end

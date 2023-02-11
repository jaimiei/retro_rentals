Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  root to: "pages#home"
  resources :video_games do
    resources :reviews, only: [:new, :create]
    resources :video_games, only: %i[index new create show]
  end
  resources :reviews, only: [:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

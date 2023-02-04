Rails.application.routes.draw do
  root to: "pages#home"
  resources :video_games do
    resources :video_games, only: %i[index new create show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

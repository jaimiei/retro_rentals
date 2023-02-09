Rails.application.routes.draw do
  # root to: "pages#home"
  resources :video_games, only: %i[index new create show] do
    resources :requests, only: %i[new create]
  end
  resources :requests, only: :destroy
end

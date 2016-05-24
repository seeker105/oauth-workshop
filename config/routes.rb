Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  get "/auth/twitter", as: :twitter_login
  get "/auth/twitter/callback", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: :logout
end

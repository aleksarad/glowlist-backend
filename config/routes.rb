Rails.application.routes.draw do
  # resources :links
  # resources :colors
  # resources :looks
  resources :users, only: [:create, :show, :index, :update, :destroy]
  resources :looks, only: [:create, :update, :destroy]

  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # resources :links
  # resources :colors
  # resources :looks
  resources :users, only: [:create, :index, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
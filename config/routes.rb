Rails.application.routes.draw do
  resources :orders
  resources :medicines
  resources :users
  resources :pharmacies
  post "/register", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

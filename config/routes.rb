Rails.application.routes.draw do
  resources :users
  resources :pets
  resources :trainers
  resources :schools
  resources :lessons
  resources :appointments
  resources :sessions, only: [:new, :create]
  resources :searches
  get "/login", to: "sessions#new", as: "login"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout"
  get "/users/:id/pets", to: "users#pets", as: "user_pets"
end

Rails.application.routes.draw do
  resources :owners
  resources :pets
  resources :trainers
  resources :schools
  resources :lessons
  resources :appointments
  resources :sessions, only: [:new, :create]
  get "/login", to: "sessions#new", as: "login"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"
end

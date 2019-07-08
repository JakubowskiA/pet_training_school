Rails.application.routes.draw do
  get 'appointments/new'
  get 'appointments/show'
  resources :owners
  resources :pets
  resources :trainers
  resources :schools
  resources :lessons
end

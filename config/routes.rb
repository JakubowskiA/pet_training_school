Rails.application.routes.draw do
  get 'lessons/index'
  get 'lessons/show'
  get 'schools/index'
  get 'schools/show'
  get 'trainers/index'
  get 'trainers/show'
  get 'pets/new'
  get 'pets/show'
  get 'owners/new'
  get 'owners/show'
  get 'owners/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

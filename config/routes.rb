Rails.application.routes.draw do

  devise_for :users
  root 'homes#index'

  resources :homes
  resources :courses
  resources :students
  resources :instructors


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

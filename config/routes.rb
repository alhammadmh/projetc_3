Rails.application.routes.draw do

  get 'users/index'
  get 'users/show'
  devise_for :users

  put "/courses/:id/add" => "courses#add_student"
  # redirect to instructors 
  # devise_scope :user do
  #   authenticated :user do
  #     root 'instructors#index', as: :authenticated_root
  #   end
  
  #   unauthenticated do
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #   end
  # end  
  root 'homes#index'

  resources :homes
  resources :courses
  resources :students
  resources :instructors


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

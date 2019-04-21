Rails.application.routes.draw do
  

  
  get 'student/index'
  get 'student/show'
  
  resources :courses
  resources :instructors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

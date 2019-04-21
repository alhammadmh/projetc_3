Rails.application.routes.draw do
  
  get 'instructors/index'
  get 'instructors/show'

  get 'courses/index'
  get 'courses/show'
  get 'courses/new'
  get 'courses/_form'
  get 'courses/edit'
  
  get 'student/index'
  get 'student/show'
  
  resources :instructors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

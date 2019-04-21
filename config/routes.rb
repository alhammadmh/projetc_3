Rails.application.routes.draw do
  get 'courses/index'
  get 'courses/show'
  get 'courses/new'
  get 'courses/_form'
  get 'courses/edit'
  
  get 'student/index'
  get 'student/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

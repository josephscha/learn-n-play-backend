Rails.application.routes.draw do
  resources :course_problems
  resources :math_problems
  resources :spelling_problems
  resources :reading_problems
  resources :user_courses
  resources :courses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

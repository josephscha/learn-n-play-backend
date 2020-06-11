Rails.application.routes.draw do
  resources :course_problems
  resources :math_problems
  resources :spelling_problems
  resources :reading_problems
  resources :user_courses
  resources :courses
  resources :users
  post '/rails/active_storage/direct_uploads', to: 'direct_uploads#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

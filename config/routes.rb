Rails.application.routes.draw do
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  post '/login', to: 'users#login'
  post '/users', to: 'users#create'
  
  
  resources :results
  resources :ratings
  resources :users
  resources :questions
  resources :quizzes
  resources :categories
  resources :dresults
  resources :dratings
  resources :dquestions
  resources :dquizzes
  resources :dcategories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  post '/login', to: 'users#login'
  post '/users', to: 'users#create'
  
  
  resources :results, only: [:create]
  resources :ratings, only: [:create]
  resources :users, except: [:destroy, :new, :edit]
  resources :questions, only: [:index]
  resources :quizzes, only: [:index, :show]
  resources :categories, only: [:index]
  resources :dresults, only: [:create]
  resources :dratings, only: [:create]
  resources :dquestions, only: [:index]
  resources :dquizzes, only: [:index, :show]
  resources :dcategories, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

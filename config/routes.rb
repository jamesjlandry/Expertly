Rails.application.routes.draw do
  get '/logged_in', to: 'sessions#logged_in'
  get '/login', to: 'sessions#create'
  resources :answers
  resources :questions
  resources :users
  resources :fields
  resources :credentials
end

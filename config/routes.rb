Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :users
  resources :fields
  resources :credentials
end

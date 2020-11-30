Rails.application.routes.draw do
  get 'sessions/new'
  root "users#index"
  
  resources :users
  resources :accounts
  resources :prodact_lists
  resources :cuisines
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
 end
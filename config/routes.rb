Rails.application.routes.draw do
  
  root "users#index"
  
  resources :users
  resources :accounts
  resources :prodact_listes
  get    '/login',   to: 'accounts#new'
  post   '/login',   to: 'accounts#create'
  delete '/logout',  to: 'accounts#destroy'
 end
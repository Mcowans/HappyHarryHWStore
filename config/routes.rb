Rails.application.routes.draw do

  devise_for :users

  resources :employees
  resources :jobs
  resources :deparments
  resources :addresses
  resources :products
  resources :orders
  resources :customers

  root 'home#index'
  get 'home/index'

  get '/login', to: "home#login"
  get '/signup', to: "home#signup"


end

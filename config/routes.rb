Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :customers, :controllers => { registrations: 'registrations' }

  resources :employees
  resources :jobs
  resources :deparments
  resources :addresses
  resources :products
  resources :orders

  resources :customers

  root 'home#index'
  get 'home/index'
  get 'home/contact'

  #get '/login', to: "home#login"
  #get '/signup', to: "home#signup"


end

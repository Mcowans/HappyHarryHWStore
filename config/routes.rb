Rails.application.routes.draw do

  resque_constraint = lambda do |request|
    request.env['warden'].authenticate? && request.env['warden'].user.admin?
  end

  constraints resque_constraint do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
  
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
  get 'cart', to: "home#login"

  #get '/login', to: "home#login"
  #get '/signup', to: "home#signup"


end

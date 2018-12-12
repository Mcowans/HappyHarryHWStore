Rails.application.routes.draw do

  resque_constraint = lambda do |request|
    request.env['warden'].authenticate? && request.env['warden'].user.admin?
  end

  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  
  devise_for :customers, :controllers => { registrations: 'registrations' }

  resources :employees
  resources :jobs
  resources :deparments
  resources :addresses
  resources :products
  #resources :orders
  #resources :carts

  resources :customers

  root 'home#index'
  get 'home/index'
  get 'home/contact'
  get 'cart', to: "home#cart"

  get '/add_to_cart', to: "carts#add_to_cart"

  post '/add_to_cart', to: "carts#add_to_cart"

  get "/orders", to: "orders#index"

  get "place_order", to: "home#place_order"

  #get '/login', to: "home#login"
  #get '/signup', to: "home#signup"


end

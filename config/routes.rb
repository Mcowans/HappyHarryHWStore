Rails.application.routes.draw do
  resources :employees
  resources :jobs
  resources :deparments
  resources :addresses
  resources :products
  resources :orders
  resources :custumers
  root 'home#index'

  get 'home/index'

end

Rails.application.routes.draw do
  resources :users
  resources :events
  resources :registrations
  root  to: 'home#index'
  get 'about', to: 'about#index'
end

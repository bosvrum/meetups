Rails.application.routes.draw do

  devise_for :users
  root to: 'events#index'
  resources :comments
  resources :events
  resources :users
  
end

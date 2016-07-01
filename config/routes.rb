Rails.application.routes.draw do

  resources :categories
  devise_for :users
  root to: 'events#index'
  
  resources :events do 
    resources :comments
  end
  resources :users
  
end

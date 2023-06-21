Rails.application.routes.draw do
  
  root to: 'pages#index'
  devise_for :users
  get 'series', to: 'series#index'
  
  get 'about', to: 'pages#about'
end

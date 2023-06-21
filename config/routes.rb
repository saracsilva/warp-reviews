Rails.application.routes.draw do
  
  
  root to: 'pages#index'
  devise_for :users
  get 'series', to: 'series#index'
  get 'series/:name', to:'series#show'
  get 'user/my_reviews', to: 'users#my_reviews'
  
  get 'about', to: 'pages#about'
  namespace :user do
    get 'my_reviews', to: 'users#my_reviews'
  end
end

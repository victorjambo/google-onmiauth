Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  resources :home
  
  root 'home#index'
  
  namespace :charts do
    get 'people-birthday'
    get 'jumbotron'
    get 'production'
  end
end

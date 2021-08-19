Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users

  namespace :users do
    get 'index', to: 'users#index'
    get 'show', to: 'users#show'
  end
end

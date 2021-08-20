Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users

  resources :users, module: 'users', only: [:index, :show]
end

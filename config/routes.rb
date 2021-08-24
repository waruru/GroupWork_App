Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users, module: 'users', only: [:index, :show]
  resources :groups
end

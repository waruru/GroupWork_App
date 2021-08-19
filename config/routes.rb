Rails.application.routes.draw do
  devise_for :users, controller: {
    registrations: 'users/registrations'
  }
  root to: 'home#index'
end

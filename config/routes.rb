Rails.application.routes.draw do
  root "home#index"

  resources :auction_items
  resources :prizes
  resources :users, only: [:index, :show]

  devise_for :users, controllers: { 
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }
end

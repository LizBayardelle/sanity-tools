Rails.application.routes.draw do
  get 'users/show'

  resources :home, only: [:index]
  root "home#index"

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show]
end

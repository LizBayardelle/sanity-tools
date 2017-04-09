Rails.application.routes.draw do
  resources :recommendations
  post "users/:id/archive" => "users#archive", as: "archive"
  post "users/:id/unarchive" => "users#unarchive", as: "unarchive"

  resources :tools
  get 'users/show'

  resources :home, only: [:index]
  root "home#index"

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show]
end

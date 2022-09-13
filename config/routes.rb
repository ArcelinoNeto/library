Rails.application.routes.draw do
  resources :reservations
  resources :books
  devise_for :admins
  devise_for :users
  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :reservations
  resources :books
  resources :users, except: [:show, :destroy]

  devise_for :admins, :skip => [:registrations]
  devise_for :users, :skip => [:registrations]

  # get 'users/index'
  get 'home/index'

  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

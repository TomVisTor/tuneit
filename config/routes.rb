Rails.application.routes.draw do
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # As renter
  resources :instruments, only: [ :index, :show ] do
    resources :reservations, only: [ :create ]
  end

  resources :reservations, only: [ :index ]

  # As owner
  namespace :owner do
    resources :reservations, only: [ :index ] do
      member do
        patch :accept
        patch :decline
      end
    end

    resources :instruments, only: [ :index, :new, :create ]
  end
end

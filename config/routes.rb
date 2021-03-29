Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # As renter
  resources :instruments, only: [ :index, :show ] do
    resources :reservations, only: [ :create ]
  end

  resources :reservations, only: [ :index ] do
    member do
      patch :cancel
    end
  end

  # As owner
  namespace :owner do
    resources :reservations, only: [ :index ] do
      member do
        patch :accept
        patch :decline
      end
    end

    resources :instruments, only: [ :index, :new, :create, :destroy, :edit, :update ]
  end

  get '/test', to: 'pages#test'
end

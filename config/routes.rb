# frozen_string_literal: true

Rails.application.routes.draw do
  root 'restaurants#index'
  devise_for :users, controllers: { sessions: 'guest_session', registrations: 'guest_register_session' }
  resources :restaurants do
    resources :items, shallow: true
  end
  resources :categories, only: %i[new create destroy]
  resources :cart_items, only: %i[create update destroy]
  resources :carts, only: %i[show]
  resources :orders
  resources :order_items, only: %i[create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

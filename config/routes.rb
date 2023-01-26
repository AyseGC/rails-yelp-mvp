# frozen_string_literal: true

Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end

  # get 'restaurants/:restaurant_id/reviews', to: 'reviews#index'
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
  # # list
  # get 'restaurants', to: 'restaurants#index'
  # # Create
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'
  # # read one
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # Update
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # patch 'restaurants/:id', to: 'restaurants#update'
  # # Delete
  # delete 'restaurants/:id', to: 'restaurants#destroy'

end

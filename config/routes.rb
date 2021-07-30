# frozen_string_literal: true

# this is for routes
Rails.application.routes.draw do
  root 'notices#index'
  resources :notices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

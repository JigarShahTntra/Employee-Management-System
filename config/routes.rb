# frozen_string_literal: true

# department/controller
Rails.application.routes.draw do
  resources :departments
  root to: 'departments#index'
end

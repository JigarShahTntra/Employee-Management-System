Rails.application.routes.draw do
  get 'leavetypes/index'
  root to: 'leavetypes#index'

  resources :leavetypes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

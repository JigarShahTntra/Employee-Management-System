Rails.application.routes.draw do
  root 'leaves_request_types#index'
  resources :leaves_request_types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

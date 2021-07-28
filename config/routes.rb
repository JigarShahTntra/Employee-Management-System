Rails.application.routes.draw do
  root 'regularizations#index'
  resources :regularizations
end

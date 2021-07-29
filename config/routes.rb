Rails.application.routes.draw do
  resources :spreadsheets
  resources :users do
    collection { post :import }
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

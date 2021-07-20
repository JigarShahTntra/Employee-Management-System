Rails.application.routes.draw do
resources :departments
root to: 'departments#index'
end

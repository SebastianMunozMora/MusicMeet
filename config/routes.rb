Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'practices#index'
  resources :practices
  resources :signups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

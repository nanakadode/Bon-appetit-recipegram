Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :users, only: %i[index show edit]
end

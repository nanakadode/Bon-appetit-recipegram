Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :users, only: %i[index show edit update] do
  end

  resources :recipes, only: %i[index new create edit update show destroy] do
    resources :like, only: %i[create destroy]
  end
end

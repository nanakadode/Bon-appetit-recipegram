Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :users, only: %i[index show edit update] do
    member do
      get :likes
    end
  end

  resources :recipes, only: %i[index new create edit update show destroy] do
    resource :likes, only: %i[create destroy]
  end
end

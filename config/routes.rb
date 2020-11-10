Rails.application.routes.draw do
  devise_for :users
 
  root to: "prefectures#index"
  resources :users, only: [:edit, :update]
  resources :prefectures, only: [:new, :create, :destroy] do
    resources :places, only: [:index, :new, :create, :destroy]
    resources :pins,   only: [:new, :create, :destroy]
  end
end

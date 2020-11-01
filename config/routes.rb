Rails.application.routes.draw do
  devise_for :users
  root to: "prefectures#index"
  resources :users, only: [:edit, :update]
  resources :prefectures, only: [:index, :destroy]
end

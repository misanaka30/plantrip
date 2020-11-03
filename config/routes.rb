Rails.application.routes.draw do
  devise_for :users
 

  root to: "prefectures#index"
  resources :users, only: [:edit, :update]
  resources :prefectures, only: [:new, :create, :destroy] do
    resources :places, only: [:index, :new, :create]
    resources :pins,   only: [:new, :create]
  end
end

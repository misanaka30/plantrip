Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "prefectures#index"
  resources :users, only: [:edit, :update]
  resources :prefectures, only: [:new, :create, :destroy]
end

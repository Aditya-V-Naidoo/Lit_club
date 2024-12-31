Rails.application.routes.draw do
  root "sessions#new"
  resources :literary_works
  resources :change_passwords, only: [:new]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :destroy, :show, :edit, :update]  
end

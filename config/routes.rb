Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :users, only: [:show, :edit]
  resources :tweets, only: [:index, :new, :show, :delete]
  resources :meals, only: [:index, :new, :show, :delete]
  resources :trainings, only: [:index, :new, :show, :delete]
  resources :processes, only: [:index, :new, :show, :delete]
  resources :records, only: [:index]
  resources :in_takes, only: [:new, :show, :delete]
  resources :out_takes, only: [:new, :show, :delete]
  resources :checks, only: [:new, :show, :delete]
end

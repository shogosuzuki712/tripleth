Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'charas', to: 'users/registrations#new_chara'
    post 'charas', to: 'users/registrations#create_chara'
    get 'people', to: 'users/registrations#new_person'
    post 'people', to: 'users/registrations#create_person'
  end
  
  resources :users, only: [:show, :edit] do
    member do
      get :meal
      get :training
      get :success
    end
  end

  root 'homes#index'
  resources :users, only: [:show, :edit]
  resources :tweets, only: [:index, :new, :create, :show, :delete]
  resources :meals, only: [:index, :new, :show, :delete]
  resources :trainings, only: [:index, :new, :show, :delete]
  resources :successes, only: [:index, :new, :show, :delete]
  resources :records, only: [:index]
  resources :in_takes, only: [:new, :show, :delete]
  resources :out_takes, only: [:new, :show, :delete]
  resources :checks, only: [:new, :create, :show, :delete]
end

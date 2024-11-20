Rails.application.routes.draw do
  get 'users/dashboard'
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/edit'
  get 'reviews/update'
  get 'reviews/destroy'

  devise_for :users


  authenticated :user do
    get 'dashboard', to: 'users#dashboard', as: :user_dashboard
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :bookings
  resources :boats do
    resources :reviews, only: [:index, :new, :create]
  end

  resources :reviews, only: [:show, :edit, :update, :destroy]

  root "pages#home"
  # Defines the root path route ("/")
end

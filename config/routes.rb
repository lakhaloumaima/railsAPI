Rails.application.routes.draw do
  devise_for :users
  #devise_for :users , at: '/auth' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts

  resources :sessions, only: [:create]
  resources :registrations, only: [:create] 

  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  resources :users , only: [:index, :show , :update, :destroy]

  resources :missions, only: [:create, :index, :show , :update, :destroy]

  resources :categories, only: [:create, :index, :show , :update, :destroy]

  resources :missions, only: [:create, :index, :show , :update, :destroy]

  resources :reviews, only: [:create, :index, :show , :update, :destroy]

  resources :educations, only: [:create, :index, :show , :update, :destroy]

  resources :experiences, only: [:create, :index, :show , :update, :destroy]
  
  root to: "static#home"
  # Defines the root path route ("/")
  # root "articles#index"
end

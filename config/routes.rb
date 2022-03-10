Rails.application.routes.draw do
  devise_for :users
  #devise_for :users , at: '/auth' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts
  #resources :users 
  resources :registrations 
  resources :sessions 
  resources :list_users
  # Defines the root path route ("/")
  # root "articles#index"
end

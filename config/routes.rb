Rails.application.routes.draw do
  resources :businesses



  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "businesses#index"
end

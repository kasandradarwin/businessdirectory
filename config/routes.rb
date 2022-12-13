Rails.application.routes.draw do
 
  resources :businesses

  resource :session, only:[:new, :create, :destroy]

  resources :users, only: [:new, :create, :show]

  # Defines the root path route ("/")
  root "businesses#index"
end

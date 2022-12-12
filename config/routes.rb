Rails.application.routes.draw do
  resources :businesses
  
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'



  resource :session, only:[:new, :create, :destroy]

  resources :users, only: [:new, :create, :show]

  # Defines the root path route ("/")
  root "businesses#index"
end

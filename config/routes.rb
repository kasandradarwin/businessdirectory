Rails.application.routes.draw do
  resources :classifieds
  resources :markets
 
  resources :businesses

  resource :session, only:[:new, :create, :destroy]
  resources :user_signed_in
  resources :users, only: [:new, :create, :show]

  # Defines the root path route ("/")
  root "businesses#index"

  resources :business do
    resources :likes, shallow: true, only: [:create, :destroy]
  end
end

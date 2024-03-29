Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:edit, :update]
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "messages#index"
end

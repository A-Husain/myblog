Rails.application.routes.draw do
  get 'homepage', to: "homepage#index"
  
  get 'user', to: 'users#profile'

  get 'sessions/new'
  get '/register', to: 'users#new'
  resources :users, only: [:create]

  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
  resources :sessions, only: [:create]

  get 'search', to:'search#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts do 
    resources :comments
  end
  root "posts#index"

  
end

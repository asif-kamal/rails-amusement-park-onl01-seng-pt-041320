Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "static_pages#home"
    resources :users
    resources :attractions
    resources :sessions
    get '/signup', to: 'users#new'
    get '/signin', to: 'sessions#new'
    post '/signin', to: 'sessions#create'
  
    
    post '/rides', to: 'rides#create'

  end
  

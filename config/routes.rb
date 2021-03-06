Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root "static_pages#home"
    resources :users do
      resources :rides
    end
    resources :attractions do
      resources :rides
    end
    
    resources :sessions
    
    get '/signup', to: 'users#new'
    get '/signin', to: 'sessions#new'
    post '/signin', to: 'sessions#create'
    delete 'logout',  to: 'sessions#destroy'
  
    
    post '/rides', to: 'rides#create'

  end
  

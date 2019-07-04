Rails.application.routes.draw do
  resources :favorites
  resources :visits
  resources :locations
  resources :users
  resources :pages

  root :to => "pages#index"
  get '/about', to: 'pages#about'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/home', to: 'pages#index'
  delete '/logout', to: 'sessions#destroy'
  delete '/favorites/destroy/:user_id/:location_id', to: 'favorites#destroy'
  get '/favorites/new/:user_id/:location_id', to: 'favorites#create'
  
end

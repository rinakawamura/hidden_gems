Rails.application.routes.draw do
  resources :favorites
  resources :visits
  resources :locations
  resources :users

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/home', to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete "/logout", to: "sessions#destroy"
  
end

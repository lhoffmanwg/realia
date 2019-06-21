Rails.application.routes.draw do
  get 'sessions/new'
  resources :agents
  resources :buyers
  resources :favorites
  resources :listings
  resources :agencies
  resources :users
  #resources :sessions

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'

  get '/signup', to: 'buyers#new'
  post '/signup', to: 'buyers#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :agents
  resources :buyers
  resources :favorites
  resources :listings
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

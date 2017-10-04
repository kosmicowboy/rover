Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"

  resources :restaurants, only: :index
  resources :dog_parks, only: :index
  resources :apartments, only: :index

  get '/dog_parks/map', to: "dog_parks#map"
  get '/restaurants/map', to: "restaurants#map"
  get '/apartments/map', to: "apartments#map"

end

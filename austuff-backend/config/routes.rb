Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get "/profile", to: "users#profile"
  
  resources :flights
  resources :order_items
  resources :orders
  resources :user_flights
  resources :products

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end

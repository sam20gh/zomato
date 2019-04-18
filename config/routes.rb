Rails.application.routes.draw do
  resources :menus
  resources :ratings
  resources :bookings
  resources :restaurants
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # booking "/bookings/:id/add_booking", to: "bookings#add_booking", as: "add_booking"
  post "/restaurants/:id/add_rating", to: "restaurants#add_rating", as: "add_rating"

  get "/login_form", to: "sessions#login_form"
  post "/login", to: "sessions#login", as: "login"

  delete "/logout", to: "sessions#logout"

  get "/profile", to: "customers#profile"

  delete "/ratings/:id", to: "ratings#delete"
  post 'restaurants/search', to: 'restaurants#search'


end

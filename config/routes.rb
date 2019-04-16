Rails.application.routes.draw do
  resources :menus
  resources :ratings
  resources :bookings
  resources :restaurants
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

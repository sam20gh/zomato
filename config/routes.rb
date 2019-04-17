Rails.application.routes.draw do
  get 'dishes/index'
  get 'dishes/show'
  resources :restaurants
  resources :customers
  resources :bookings 
  resources :ratings
  resources :menus
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

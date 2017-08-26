Rails.application.routes.draw do
  root to: "computers#index"
  resources :computers
  resources :diseases
  resources :beds
  resources :ducks
  resources :mice
  resources :oxen
  resources :records
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

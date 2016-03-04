Rails.application.routes.draw do
  resources :tracks
  resources :books
  resources :movies
  root 'home#index'
end

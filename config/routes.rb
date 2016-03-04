Rails.application.routes.draw do
  resources :tracks
  resources :books
  resources :movies
  root 'tracks#index'
end

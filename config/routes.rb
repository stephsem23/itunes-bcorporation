Rails.application.routes.draw do
  resources :tracks
  root 'tracks#index'
end

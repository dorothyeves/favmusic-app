Rails.application.routes.draw do
  root 'artists#index'
  resources :artists
  get 'show' , to: 'artists#show'
  resources  :songs
  get 'show' , to: 'songs#show'
end

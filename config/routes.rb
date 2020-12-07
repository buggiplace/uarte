Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'imprint', to: 'pages#imprint'
  get 'contact', to: 'pages#contact'
  resources :artworks
  resources :artists
  # get "artworks/", to: "artworks#index", as: :artworks
  # get "artworks/:id", to: "artworks#show", as: :artwork
  # get "artists/", to: "artists#index", as: :artists
  # get "artists/:id", to: "artists#show", as: :artist
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

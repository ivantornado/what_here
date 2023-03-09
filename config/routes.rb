Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :spots, only: %i[index show] do
    member do
      post 'toggle_favorite', to: "spots#toggle_favorite"
    end
  end

  resources :bookmarks, only: %i[index show]

  get '/profile', to: 'pages#profile'
  get '/favorites', to: 'spots#favorites'
  get '/test', to: 'pages#test'


end

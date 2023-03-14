Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  patch 'spots/:id', to: "spots#update"

  resources :spots, only: %i[index show] do
    member do
      post 'toggle_favorite', to: "spots#toggle_favorite"
      post 'dislike', to: "spots#dislike"
      post 'update_state'
    end
  end

  get '/profile', to: 'pages#profile'
  get '/favorites', to: 'spots#favorites'
  get '/bookmarks', to: 'spots#bookmarks'
end


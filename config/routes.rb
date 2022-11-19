Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :restaurants, only: [:new, :create, :index, :show] do
  #   resources :reviews, only: [:new, :create, :index, :show]

  resources :lists, only: [:new, :create, :index, :show, :destroy] do
    resources :bookmarks, only: [:new, :create, :index]
  end
  resources :bookmarks, only: [:destroy]
end

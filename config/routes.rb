Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/delete'
  get 'movies/index'
  get 'movies/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: [:index, :new, :create, :show]
  resources :bookmarks, only: [:new, :create, :delete] do
    post 'create_bookmark', on: :member
  end
end

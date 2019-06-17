Rails.application.routes.draw do
  get 'artists/show'
  get 'categories/show'
  get 'search/index'
  get 'search/new'
  devise_for :users
  
  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
    resources :search, only: [:index, :new], as: :searches
    resources :artists, only: :show
    resources :categories, only: :show
  end
  
  unauthenticated :user do
    root to: "home#index"
  end
end

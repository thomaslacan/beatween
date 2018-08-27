Rails.application.routes.draw do
  get 'songs/index'
  get 'songs/show'
  get 'songs/new'
  get 'songs/create'
  get 'songs/edit'
  get 'songs/update'
  get 'tracks/new'
  get 'tracks/create'
  get 'tracks/edit'
  get 'tracks/update'
  get 'tracks/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :songs, only: [:index, :show, :new, :create, :edit, :update] do
    resources :tracks, only: [:new, :create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

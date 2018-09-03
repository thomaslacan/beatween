Rails.application.routes.draw do
  devise_for :users
  root to: 'songs#index', as: "discover"
  resources :songs, only: [:index, :show, :new, :create, :edit, :update] do
    resources :song_tracks, only: [:new, :create]
    resources :tracks, only: [ :create, :new ]
  end
  resources :users, only: [:show, :edit, :update]
  resources :tracks, only: [ :destroy, :edit, :update]
  resources :song_tracks, only: [ :destroy,  :edit, :update ]
end

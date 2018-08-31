Rails.application.routes.draw do
  devise_for :users
  root to: 'songs#index', as: "discover"
  resources :songs, only: [:index, :show, :new, :create, :edit, :update] do
    resources :song_tracks, only: [:new, :create, :edit, :update, :destroy]
    resources :tracks, only: [ :create, :new ]
  end
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tracks, only: [ :destroy, :edit, :update]
end

Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]

  resources :blogs do
    collection do
      post :confirm
    end
  end
end

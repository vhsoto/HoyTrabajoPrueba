Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end
  resources :providers do
    get '/page/:page', action: :index, on: :collection
  end
  resources :banks do
    get '/page/:page', action: :index, on: :collection
  end
  
  post 'flash', to: 'flash#dismiss'
  root "dashboard#index"
end

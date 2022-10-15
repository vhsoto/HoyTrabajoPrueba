Rails.application.routes.draw do
  get 'dashboard/index'
  resources :providers do
    get '/page/:page', action: :index, on: :collection
  end
  resources :banks do
    get '/page/:page', action: :index, on: :collection
  end
  
  # root "articles#index"
end

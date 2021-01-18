Rails.application.routes.draw do
  namespace :admin do
    get '/index', to: 'static_pages#index'
    get 'static_pages/help'
    resources :requests
  end
  root 'static_pages#index'
  get '/signup', to: 'users#new'
  get'/login',to: 'sessions#new'
  post'/login',to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :tours
end

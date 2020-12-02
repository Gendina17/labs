Rails.application.routes.draw do
  get '/signin', to: 'session#new'
  get '/signup', to: 'users#new'
  get '/signout', to: 'session#destroy'
  root 'method#input'
  get 'method/input'
  get 'method/view'
  resources :session, only: [:new, :create, :destroy]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
CongressTracker::Application.routes.draw do

  # fixed // add root to: somethin
  root :to => "static_pages#home"
  get '/signup' => "users#new"
  get '/login' => "session#new"
  post '/login' => "session#create"
  get '/logout' => "session#destroy"

  resources :users
  resources :states
  resources :senators
  resources :bills

end

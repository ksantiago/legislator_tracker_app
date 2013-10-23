CongressTracker::Application.routes.draw do

  get '/signup' => "users#new"
  get '/login' => "session#new"
  post '/login' => "session#create"
  get '/logout' => "session#destroy"

  resources :users
  resources :states
  resources :senators
  resources :bills

end

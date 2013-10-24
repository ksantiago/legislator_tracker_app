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
#== Route Map
# Generated on 24 Oct 2013 10:49
#
#       signup GET    /signup(.:format)            users#new
#        login GET    /login(.:format)             session#new
#              POST   /login(.:format)             session#create
#       logout GET    /logout(.:format)            session#destroy
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#       states GET    /states(.:format)            states#index
#              POST   /states(.:format)            states#create
#    new_state GET    /states/new(.:format)        states#new
#   edit_state GET    /states/:id/edit(.:format)   states#edit
#        state GET    /states/:id(.:format)        states#show
#              PUT    /states/:id(.:format)        states#update
#              DELETE /states/:id(.:format)        states#destroy
#     senators GET    /senators(.:format)          senators#index
#              POST   /senators(.:format)          senators#create
#  new_senator GET    /senators/new(.:format)      senators#new
# edit_senator GET    /senators/:id/edit(.:format) senators#edit
#      senator GET    /senators/:id(.:format)      senators#show
#              PUT    /senators/:id(.:format)      senators#update
#              DELETE /senators/:id(.:format)      senators#destroy
#        bills GET    /bills(.:format)             bills#index
#              POST   /bills(.:format)             bills#create
#     new_bill GET    /bills/new(.:format)         bills#new
#    edit_bill GET    /bills/:id/edit(.:format)    bills#edit
#         bill GET    /bills/:id(.:format)         bills#show
#              PUT    /bills/:id(.:format)         bills#update
#              DELETE /bills/:id(.:format)         bills#destroy

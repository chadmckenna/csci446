ActionController::Routing::Routes.draw do |map|
  map.resources :permissions

  map.resources :permissions

  map.resources :roles

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.resources :user_sessions
  map.resources :users
  map.resources :games
  map.resources :roles
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  map.root :controller => "games", :action => "index"
end

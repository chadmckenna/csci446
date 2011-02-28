ActionController::Routing::Routes.draw do |map|
  map.resources :authors

  map.root :controller => 'articles'
  map.resources :articles

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

ActionController::Routing::Routes.draw do |map|
  map.resources :words do |word|
    word.resources :definitions
  end
  map.root :controller => 'words', :action => 'index' 
end

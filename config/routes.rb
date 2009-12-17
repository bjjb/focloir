ActionController::Routing::Routes.draw do |map|
  map.resources :words do |word|
    word.resources :definitions
  end
  map.resource :search, :only => :show
  map.root :controller => 'words', :action => 'index' 
end

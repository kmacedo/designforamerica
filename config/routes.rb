Secretsauce::Application.routes.draw do

  resources :designs
  
  match "projects/termsofservice", :to=>"projects#termsofservice"
  resources :projects do 
      resources :designs
  end
  
  
  resources :profiles
  
  devise_for :users

  #search
  get "search/index"
  match 'search', :to => 'search#index'  
  root :to => "home#index"
end

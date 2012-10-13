HighWheelCoffee::Application.routes.draw do
  
  root :to => 'content#home'
  
  #######################################
  # Content
  #######################################
  
  match '/coffee/archive'   => 'content#archive', as: :coffee_archive
  match '/coffee/:url_name' => 'content#coffee',  as: :coffee
  
  #######################################
  # Admin
  #######################################

  namespace :admin do
    match '/'       => 'admins#login',  as: :login
    match '/logout' => 'admins#logout', as: :logout
    
    resources :admins
    resources :coffees
    
    match '/coffees/:id/:kind/destroy' => 'coffees#destroy_photo', as: :destroy_photo
  end
  

end

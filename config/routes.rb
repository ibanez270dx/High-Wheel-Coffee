HighWheelCoffee::Application.routes.draw do
  
  namespace :admin do
    match '/'       => "admins#login",  as: :login
    match '/logout' => 'admins#logout', as: :logout
    
    resources :admins
    resources :content
  end
  
  root :to => 'content#home'
end

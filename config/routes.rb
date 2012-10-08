HighWheelCoffee::Application.routes.draw do
  
  namespace :admin do
    match '/' => "admin#login", as: :login
    resources :admin
    resources :content
  end
  
  root :to => 'content#home'
end

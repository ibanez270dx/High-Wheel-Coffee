HighWheelCoffee::Application.routes.draw do
  
  namespace :admin do
    match '/' => "admins#login", as: :login
    resources :admins
    resources :content
  end
  
  root :to => 'content#home'
end

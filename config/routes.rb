Rails.application.routes.draw do
  
  root "splashes#new"
  get "secret" => "splashes#secret"


  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"
  
  resources :posts
  resources :users
  resources :paintings
  

end

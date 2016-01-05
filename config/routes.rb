Rails.application.routes.draw do
  
  root "castles#road"

  get "courtyard" => "castles#courtyard"


  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"
  
  resources :posts
  resources :users
  resources :paintings
  

end

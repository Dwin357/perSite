Rails.application.routes.draw do
  
  root "splashes#new"

  resources :posts
  resources :users
  resources :sessions

end

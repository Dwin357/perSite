Rails.application.routes.draw do
  
  root "splashes#new"

  resources :posts
  resources :user
  resources :session

end

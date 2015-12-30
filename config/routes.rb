Rails.application.routes.draw do
  
  root "splashes#new"
  get "secret", to: "splashes#secret", as: :secret

  # get 'exit', to: 'to#destroy', as: :logou

  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"
  
  resources :posts
  resources :users
  

end

Rails.application.routes.draw do
  root to: "gossip#index"
  get 'gossip/index'
  get 'gossip/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/team", to: "student#index"
  get "/contacts", to: "student#contacts"
  get "/welcome/:first_name", to:  "student#welcome"
  
  resources :gossip
  resources :student
  
end

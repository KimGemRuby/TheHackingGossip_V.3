Rails.application.routes.draw do
  get 'gossip/index'
  get 'gossip/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "gossip#index"
  get "/team", to: "student#index"
  get "/contacts", to: "student#contacts"
  get "/welcome/:first_name", to:  "student#welcome"
  
  resources :gossip
  resources :student
  
end

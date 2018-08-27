Rails.application.routes.draw do
  resources :events
  resources :baby_users
  resources :babies
  resources :users
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

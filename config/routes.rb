Rails.application.routes.draw do
  root :to => 'welcome#index'

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  get "/profile" => "users#show"
  get "/edit" => "users#edit"
  get "/plan" => "recommendations#current"

  resources :users, only: [:update]  
end

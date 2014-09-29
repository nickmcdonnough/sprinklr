Rails.application.routes.draw do
  require 'sidekiq/web'
  root :to => 'welcome#index'

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  get "/profile" => "users#show"
  get "/edit" => "users#edit"
  get "/plan" => "recommendations#current"

  resources :users, only: [:update] 

  # sidekiq_constraint = lambda do |request|
  #   request.env['warden'].authenticate? && request.env['warden'].user.admin?
  # end
  # mount Sidekiq::Web => '/sidekiq' 
end

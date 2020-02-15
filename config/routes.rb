Rails.application.routes.draw do
  get 'homes/index'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root 'homes#index'
  resources :elastic_boards
  resources :ransack_boards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

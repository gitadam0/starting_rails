Rails.application.routes.draw do
  root to: 'home#homeindex'
  devise_for :auth_users



  resources :users
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "welcome", to:  "welcome#home"
  get "adam", to:  "adam#adamPage"
  # get "adam/adamPage"

  # Defines the root path route ("/")
  # root "posts#index"
end

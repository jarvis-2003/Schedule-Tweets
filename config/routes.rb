Rails.application.routes.draw do
  get "about", to: "about#index"
  # get "/", to: "main#index"
  root to: "main#index"

  # its the route to login user.
  get "login-us", to: "about#login", as: "login"
  post "user-login", to: "about#userLogin"


  # here the route to logout will be set
  delete "logout", to: "sessions#destroy"


  # its the route to register new user to the application.
  get "registration", to: "registration#new"
  post "registration", to: "registration#create"
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end

Rails.application.routes.draw do
  get "about", to: "about#index"
  # get "/", to: "main#index"
  root to: "main#index"
  get "login-us", to: "about#login", as: "login"
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end

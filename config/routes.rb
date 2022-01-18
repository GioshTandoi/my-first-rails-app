Rails.application.routes.draw do
  # GET /about
  get "about-us", to: "about#index", as: :about
  get "sign-up", to: "registration#new"
  post "sign-up", to:"registration#create"
  root to: "main#index"
end

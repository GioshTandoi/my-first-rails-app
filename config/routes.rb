Rails.application.routes.draw do
  # GET /about
  get 'about-us', to: 'about#index', as: :about

  get 'sign-up', to: 'registration#new'
  post 'sign-up', to: 'registration#create'

  get 'sign-in', to: 'sessions#new'
  post 'sign-in', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  root to: 'main#index'
end

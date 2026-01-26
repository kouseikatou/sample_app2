Rails.application.routes.draw do
  get 'users/new'
  # GET / => static_pages#home
  root "static_pages#home"

  # GET static_pages/home => static_pages#home
  get  "/help",    to: "static_pages#help"
  get  "/about",   to: "static_pages#about"
  get  "/contact", to: "static_pages#contact"
  get  "/signup",  to: "users#new"

  # GET sessions/new. => sessions#/login
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"


  resources :users
  # => get "/users",   to"users#index"
  # => get "/users/:id",   to"users#show"
  # => get "/users/new",   to"users#new"


end

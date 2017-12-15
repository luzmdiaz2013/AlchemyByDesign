Rails.application.routes.draw do
  get "/", to: "welcome#index"
  get "/about", to: "welcome#about"
  get "/projects", to: "welcome#projects"


  resources :articles
# resources :session, only: [:new, :create, :destroy] FOR AUTH
end

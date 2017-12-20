Rails.application.routes.draw do
  get "/", to: "welcome#index"
  get "/welcome", to: "welcome#index"
  get "/about", to: "welcome#about"
  get "/projects", to: "welcome#projects"
  # get "/publications", to: "welcome#publications"
  get "/videos", to: "welcome#videos"
  get "/audio", to: "welcome#audio"
  get "/contact", to: "welcome#contact"

  resources :publications
# resources :session, only: [:new, :create, :destroy] FOR AUTH
end

Rails.application.routes.draw do
  get "/welcome", to: "welcome#index"
# resources :session, only: [:new, :create, :destroy] FOR AUTH
end

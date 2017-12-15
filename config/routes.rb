Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/welcome", to: "welcome#index"
# resource :session, only: [:new, :create, :destroy] FOR AUTH
end

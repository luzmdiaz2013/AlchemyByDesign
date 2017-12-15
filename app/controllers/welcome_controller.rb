class WelcomeController < ApplicationController
  def index
    # says we want to send back plain text
    render plain: "Welcome!"
  end
end

class WelcomeController < ApplicationController
  def hello
    @visiteur = params[:first_name]
  end
end

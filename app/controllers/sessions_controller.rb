class SessionsController < ApplicationController
  def new
    
  end

  def create
    puts "aaaaaaa"
    puts User.first.first_name
    puts "aaaaaaaa"
    puts User.first.email
    puts params[:email]
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to gossips_path
    else
      render 'new'
    end 
  end

  def destroy
    session.delete(:user_id)
    redirect_to gossips_path
  end
end
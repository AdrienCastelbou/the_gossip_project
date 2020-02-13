class UsersController < ApplicationController

  def index
      
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    city = params[:city]
    City.all.each do |old_city|
      if old_city.name.downcase == city.downcase
        city = old_city
      end
    end

    city = City.new(name: params[:city].capitalize) if city == params[:city]

    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], city: city, password: params[:password], password_confirmation: params[:password_confirmation], email: params[:email] )
    if @user.save
      log_in(@user)
      redirect_to profil_path(@user.id)
    else
      render new_user_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
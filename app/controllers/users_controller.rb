class UsersController < ApplicationController

  def index
      
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], city: City.create(name: "Paris"), password: params[:password], password_confirmation: params[:password_confirmation] )
    if @user.save
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
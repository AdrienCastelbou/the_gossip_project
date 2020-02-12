class CitiesController < ApplicationController
  def show
    @city = City.find(params[:id])
    @user_gossips = []
    @city.users.each do |user|
      user.gossips.each do |gossip|
      @user_gossips << gossip
      end
    end
  end

end
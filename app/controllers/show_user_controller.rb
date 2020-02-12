class ShowUserController < ApplicationController
  def profil
    @user = User.find(params[:id])
    @user_gossips = []
    Gossip.all.each do |gossip|
      @user_gossips << gossip if gossip.user.id == @user.id
    end
  end
end

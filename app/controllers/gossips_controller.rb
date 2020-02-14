class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:create, :edit, :destroy]
  def index
    @gossips = Gossip.all  
  end

  def show
    @gossip = Gossip.find(params[:id])
    
  end

  def new
    @gossip = Gossip.new
  end

  def create
      @gossip = Gossip.new(title: params[:title], content: params[:content], user: current_user)
      if @gossip.save
        flash[:notice] = "Post successfully created"
        redirect_to root_path
      else
        render new_gossip_path
      end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    gossip_params = params.require(:gossip).permit(:title, :content)
  
  if @gossip.update(gossip_params)
    redirect_to gossip_path(params[:id]),  :notice => "Le potin a bien été modifié."
  else
    render edit_gossip_path(params[:id])
  end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end
end
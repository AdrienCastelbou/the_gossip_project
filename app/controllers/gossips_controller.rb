class GossipsController < ApplicationController

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
      @gossip = Gossip.new(title: params[:title], content: params[:content])
      puts @gossip
      @gossip.user = User.find_by(id: session[:user_id])
      puts @gossip
      if @gossip.save
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
    redirect_to gossip_path(params[:id])
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
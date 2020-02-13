class CommentsController < ApplicationController
  before_action :authenticate_user, only: [:create, :edit]
  def index
      
  end

  def show

  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(content: params[:content], user: current_user, gossip: Gossip.find(params[:gossip_id]))
    redirect_to gossip_path(@comment.gossip.id)
  end

  def edit
    
    @comment = Comment.find(params[:id])
    @gossip = @comment.gossip
  end

  def update
    @comment = Comment.find(params[:id])
    comment_params = params.require(:comment).permit(:content)
  
  if @comment.update(comment_params)
    redirect_to gossip_path(@comment.gossip.id)
  else
    render edit_comment_path(params[:id])
  end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to gossips_path
  end
  

end
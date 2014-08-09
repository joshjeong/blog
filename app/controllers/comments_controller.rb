class CommentsController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    params.permit!
    @post = Post.find(params[:post_id])
    @post.comments.create(params[:comment])
    redirect_to :post_comments
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to :post_comments
  end

end
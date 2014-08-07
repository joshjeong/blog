class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new #POST
    @post = Post.new
  end

  def create #GET
    # params.permit!
    Post.create(params[:post])
    redirect_to :posts
  end

  def show #GET, shows page for indiv posts
    @post = Post.find(params[:id])
  end

  def destroy #DELETE
    Post.find(params[:id]).destroy
    redirect_to :posts
  end

  def update #PUT, updates db

  end

  def edit #GET, shows page to edit
  end

end
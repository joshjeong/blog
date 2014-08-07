class PostsController < ApplicationController

  def index
    @all_posts = Post.all
  end

  # def new
  #   @post = Post.new
  # end

  def create
    params.permit!
    Post.create(params[:post])
    redirect_to "/posts"
  end

  def show
    @post = Post.find(params[:id])
  end

end
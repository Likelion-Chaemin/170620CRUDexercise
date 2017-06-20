class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:post]
    @post.save
    redirect_to '/home/index'
  end

  def update
    @post = Post.find(params[:id])
  end

  def update_real
    @post = Post.find(params[:id])
    @post.title = params[:up_title]
    @post.content = params[:up_post]
    @post.save
    redirect_to '/home/index'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/home/index'
  end
end

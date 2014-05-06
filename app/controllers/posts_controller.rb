class PostsController < ApplicationController
  include PostsHelper

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    flash.notice = "Post '#{@post.title}' Created!"
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    flash.notice = "Post '#{@post.title}' Updated!"
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.destroy(params[:id])
    flash.notice = "Post '#{@post.title}' Deleted!"
    redirect_to posts_path(@post)
  end

end

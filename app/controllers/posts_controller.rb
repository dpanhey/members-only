class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
  end
end



class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end

  def create
    title = params[:post][:title]
    description = params[:post][:description]
    Post.create(title: title, description: description)
    redirect_to posts_path
  end 
  
end

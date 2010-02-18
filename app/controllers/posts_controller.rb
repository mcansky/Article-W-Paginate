class PostsController < ApplicationController
  def index
    @posts = Post.paginate :page => params[:page], :order => 'created_at DESC'
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Post créé avec succès."
      redirect_to @post
    else
      render :action => 'new'
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "Post mis à jour avec succès."
      redirect_to @post
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post détruit avec succès."
    redirect_to posts_url
  end
  
  def delete
    post = Post.find(params[:id])
    post.destroy
    posts = Post.paginate :page => params[:page], :order => 'created_at DESC'
    render :partial => "list_posts", :locals => {:posts => posts}
  end
  
end

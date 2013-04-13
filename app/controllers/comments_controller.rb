class CommentsController < ApplicationController

  # http_basic_authenticate_with :name => "MasterTaster", :password => "Vino101", :only => :destroy

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    @time = Time.now
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.update
    @time = Time.now
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
  
end

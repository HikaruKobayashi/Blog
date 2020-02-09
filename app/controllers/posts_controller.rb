class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
    impressionist(@post, nil, unique: [:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    @post.save!
    redirect_to('/')
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to('/')
  end

  private

  def set_img
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name, :article, :title, :image, :label)
  end
end

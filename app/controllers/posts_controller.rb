class PostsController < ApplicationController
  PER = 10

  def index
    @post = Post.page(params[:page]).per(PER).order(id: 'DESC')
  end

  def english
    @post = Post.where(label: 'English').order(id: 'DESC')
  end

  def programming
    @post = Post.where(label: 'Programming').order(id: 'DESC')
  end

  def show
    @post = Post.find(params[:id])
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

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
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

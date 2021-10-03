class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]
  before_action :move_to_index, only: :destroy

  def index
    @posts = Post.all.order('id DESC')
  
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:beer_name, :description, :style, :assessment_id, :bar_name, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    @post = Post.find(params[:id])
    redirect_to action: :index unless current_user.id == @post.user_id
  end

end

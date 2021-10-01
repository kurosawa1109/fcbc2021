class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, only: [:edit, :update, :destroy]

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

  private

  def post_params
    params.require(:post).permit(:beer_name, :description, :style, :assessment_id, :bar_name, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless current_user.id == @post.user_id
  end

end

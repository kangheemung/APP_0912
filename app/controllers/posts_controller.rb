class PostsController < ApplicationController
  def home
    @post=Post.new
    @posts=Post.all
  end
  def index
  end

  def show
  end

  def new
    @post=Post.find(params[:id])
  end
  def create
    post =current_user.posts.build(post_params)
    if post.save
      #session[:user_id]=user.id
      redirect_to root_path
    else
      render :new
    end

  end
  private
  def post_params
       params.require(:post).permit(:title, :content)
  end
  
end

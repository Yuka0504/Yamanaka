class PostsController < ApplicationController
  def index
    @posts = Post.all
    #書き換える部分ここから
      if params[:search] == nil
        @posts= Post.all
      elsif params[:search] == ''
        @posts= Post.all
      else
        #部分検索
        @posts = Post.where("college LIKE ? ",'%' + params[:search] + '%')
      end
      #ここまで
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.college = current_user.university
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
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end


  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:body, :time, :complete)
  end
end

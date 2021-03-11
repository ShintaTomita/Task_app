class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :start_at, :times, :importance, :memo))
    if @post.save
      flash[:notice] = "タスクを登録しました"
      redirect_to "/"
    else
      flash[:notice] = "タスクを登録できませんでした"
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])

  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :start_at, :times, :importance, :memo))
      flash[:notice] = "タスクを更新しました"
      redirect_to "/"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "タスクを削除しました"
      redirect_to "/"
    end
  end
end

class PostsController < ApplicationController
  before_action :find_post, only: %i[show update edit destroy]
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @comments = @post.comments
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to('/posts/index')
    else
      render('/posts/new')
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "投稿を編集しました"
      redirect_to('/posts/index')
    else
      render('/posts/edit')
    end
  end

  def edit; end

  def destroy
    if @post.destroy
      flash[:notice] = "投稿を削除しました"
      redirect_to('/posts/index')
    else
      redirect_to('/posts/edit')
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, { tag_ids: [] })
  end

  def find_post
    @post = Post.find(params[:id])
  end
end

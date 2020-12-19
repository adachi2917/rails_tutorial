# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    post = Post.find(params[:id])
    comment = post.comments.build(comment_params)
    if comment.save
      flash[:success] = "コメントを投稿しました"
      redirect_to("/posts/#{post.id}")
    else
      flash[:danger] = "コメントを投稿できません"
      redirect_to("/posts/#{post.id}")
    end
  end

  def destroy
    comment = Comment.find(params[:comment_id])
    comment.destroy
    flash[:notice] = "コメントを削除しました"
    redirect_to("/posts/#{params[:id]}")
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end

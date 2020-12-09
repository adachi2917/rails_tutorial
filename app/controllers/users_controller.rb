class UsersController < ApplicationController
  before_action :find_user, only: %i[show update edit ]
  def index
    @users = User.all
  end

  def show;
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end

  def update
    @user.name = params[:name]
    @user.email = params[:email]
    if @post.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

  def edit;
  end

  private
  def user_params
    params.permit(:name,:email)
  end

  def find_user
    @user = User.find(params[:id])
  end
end

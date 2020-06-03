class UsersController < ApplicationController
  
  #ユーザー一覧
  def index
    @users = User.all
  end
  

  #新規登録
  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to users_url
  end

  #ユーザー詳細
  def show
    @user = User.find(params[:id])
  end

  #編集
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end
  

  #削除
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end
  

  private

    def user_params
      params.permit(:name, :age)
    end
  
  
end
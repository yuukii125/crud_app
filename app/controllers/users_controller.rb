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
    if User.create(user_params)
      redirect_to users_url
    else
      render
    end
  end

  #ユーザー詳細
  def show
    @user = User.find(params[:id])
  end
  
  #削除
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end
  

  private

    def user_params
      params.permit(:name, :gender, :age)
    end
  
  
end
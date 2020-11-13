class UsersController < ApplicationController
   # アカウント確認画面
  def index
    @users = User.new
  end
  
  # user 登録画面
  def new 
    @users = User.new
  end
  
  # user アカウント登録
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
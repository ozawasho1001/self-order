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
    @users = User.new(params.require(:user).permit(:name, :email, :password))
    if @users.save
      redirect_to root_path, success: '登録できました'
    else
      flash.now[:danger] = '登録失敗です'
      render :new
    end
  end
end

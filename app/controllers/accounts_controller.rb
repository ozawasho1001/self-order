class AccountsController < ApplicationController
  def index
  end
  
  def create
    user = User.find_by(email: params[:account][:email])
    if user && user.authenticate(params[:account][:password])
      log_in user
      redirect_to root_path, success: 'ログインに成功しました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end
  
  private
  def log_in(user)
    session[:user_id] = user.id
  end
end

class CuisinesController < ApplicationController
  def new
    @cuisine =Cuisine.new
  end
  
  def index
  end
  
  def create
    @cuisine = Cuisine.new(params.require(:cuisine).permit(:name, :price, :photo, :text))
    if @cuisine.save
      redirect_to  new_cuisine_path, success: '登録できました'
    else
      flash.now[:danger] = '登録失敗です'
      render :new
    end
  end
end

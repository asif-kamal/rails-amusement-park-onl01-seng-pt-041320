#require 'pry'
class UsersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]
  
  
  def new
    @user = User.new
  end

  

  def create
    user = User.create(user_params)
    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def show
  
      @user = User.find_by(:id => params[:id])
  
    
  end

  private
  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :admin)
  end
 
  def require_login
    unless current_user
      redirect_to '/'
    end
  end
end

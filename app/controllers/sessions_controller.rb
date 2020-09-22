#require 'pry'
class SessionsController < ApplicationController
  def new
    @user = User.new
  end


  def show
    
    @user = User.find_by(id: session[:user_id])
  end

  def create
    @user = User.find_by(:name => params[:user][:name])
    #binding.pry
    if @user 
      
      session[:user_id] = @user.id
      
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def destroy
    if current_user
      session.delete :user_id
      redirect_to root_url
    end
  end
end

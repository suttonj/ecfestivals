 class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  	  flash[:success] = "Welcome to EC Festivals!"
      redirect_to @user
    else
      render 'new'
      Rails.logger.info(@user.errors.inspect) 
    end
  end
end

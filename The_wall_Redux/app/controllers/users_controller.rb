class UsersController < ApplicationController
  def new
    	@user = User.new
  end

  def create
  	puts params[:user]
  	# @user = User.new(params[:user])
  	@user = User.new(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
  	if @user.save
  		flash[:success] = "Successfully Registered"
  		redirect_to '/login'
  	else
  		flash[:errors] = @user.errors.full_messages
  		redirect_to '/register'
  	end
  end

  def show
  	@user = User.find(params[:id])
  end
end

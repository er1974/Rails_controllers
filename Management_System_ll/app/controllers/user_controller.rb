class UserController < ApplicationController
	def index
		@users = User.all

	end

	def new
		@errors = flash[:errors]
	end

	def create
		@users = User.new(first_name:params[:first_name],last_name:params[:last_name],email_address: params[:email_address],password: params[:password])
		if @users.valid?
			@users.save
			redirect_to '/user'
		else
			flash[:errors]=@users.errors.full_messages
			redirect_to '/user/new'
		end

	end
end

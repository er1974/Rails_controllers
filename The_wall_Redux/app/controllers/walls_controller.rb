class WallsController < ApplicationController
  def index
  		@user = User.find(session[:user_id])
  	@posts = Post.all

  	@post = Post.new

  	@comment = Comment.new
  end
end

class PostsController < ApplicationController
  def create
  		u = User.find(session[:user_id])
  	post = u.posts.create(message: params[:post][:message])
  	if post.save
  		flash[:post_success] = "Post Created Successfully"
	else
		flash[:post_errors] = "Error could not be posted"
	end
	redirect_to '/wall'
  end

  def destroy
  end
end

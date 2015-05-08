class CommentsController < ApplicationController
  def create
  		u = User.find(session[:user_id])
  	p = Post.find(params[:comment][:msg_id])
  	comment = p.comments.create(message: params[:comment][:message], user_id: params[:comment][:user_id])
  	if comment.save
  		flash[:comment_success] = "Comment Created Successfully"
	else
		flash[:comment_errors] = "Comment can not be blank"
	end
  	redirect_to "/wall"
  end

  def destroy
  end
end

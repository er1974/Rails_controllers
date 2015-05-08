   class NumberController < ApplicationController
  def index
	  	if session[:number]==nil
	  		@random = rand(1..100)
	  		session[:number] = @random
	  	end
	  	@number = session[:number]
	  	@answer = flash[:answer]
  end
  def result
	  	@num = params[:number].to_i
	  	#render text: params
	  	if @num > session[:number]
	  		flash[:answer]= 'High'
	  	elsif @num < session[:number]
	  		flash[:answer]= 'low'
	  	else
	  		flash[:answer]= 'correct'
	  		session[:number]= nil
	    end
	    redirect_to '/'
  end

end

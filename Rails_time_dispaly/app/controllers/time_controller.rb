class TimeController < ApplicationController
	def main
		@date = Time.now.strftime("%b %d %Y")
		@time = Time.now.strftime("%H:%M %p")
	end   
end

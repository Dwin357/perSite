class SessionController < ApplicationController

	def new

	end

	def create
		user = User.find_by(username: params[:session][:username])

		if user && user.au
	end

	def delete

	end
	
end
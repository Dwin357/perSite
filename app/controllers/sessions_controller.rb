class SessionsController < ApplicationController

	# def index
	# end

	def new
	end

	def create
		user = User.find_by(username: params[:session][:username])
		if user && user.authenticate?
			log_in user
			redirect_to root_url
		else
			@errors = ["Bad username - password combination"]
			render 'new'
		end
	end

	# def show
	# end

	# def edit
	# end

	# def update
	# end

	def destroy
		log_out
		redirect_to root_url
	end
end
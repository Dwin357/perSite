class UserController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			# success
		else
			render "new"
		end
	end

	
end
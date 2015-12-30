class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.author = current_user
		if @post.save
			redirect_to post_path(@post)
		else
			@errors = @post.errors.full_messages
			render "new"
		end
	end

	def show
		@post = Post.includes(:author).find_by_id(params[:id])
	end

	def edit
		@post = current_user.posts.find_by_id(params[:id])
	end

	# def update
	# end

	# def destroy
	# end

	private
	def post_params
		params.require(:post).permit(:title, :body)
	end

end

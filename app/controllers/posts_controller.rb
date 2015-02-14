class PostsController < ApplicationController
	
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find params[:id]
	end


	def new
		@post = Post.new
	end

	def create
		@post = Post.new post_params
		if @post.save
			flash[:notice] = "Post created successfully"
			redirect_to home_path
		else
			render 'new'
		end
	end

	def edit
		@post = Post.find params[:id]
	end

	def update
		@post = Post.find params[:id]
		if @post.update_attributes post_params
			flash[:notice] = "Post updated successfully"
			redirect_to home_path
		else
			render 'edit'
		end
	end

	private

	def post_params
		params.require(:post).permit(:postname, :password)
	end
end

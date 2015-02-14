class CommentsController < ApplicationController
	def new
		@post = Post.find params[:post_id]
		@comment = Comment.new
	end

	def create
		@post = Post.find params[:post_id]
		@comment = Comment.new comment_params
		if @comment.save
			flash[:notice] = "Comment created successfully"
			redirect_to post_path params[:post_id]
		else
			render 'new'
		end
	end

	def edit
		@comment = Comment.find params[:id]
	end

	def update
		@comment = Comment.find params[:id]
		if @comment.update_attributes comment_params
			flash[:notice] = "Comment updated successfully"
			redirect_to post_path params[:post_id]
		else
			render 'edit'
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:text, :post_id)
	end
end

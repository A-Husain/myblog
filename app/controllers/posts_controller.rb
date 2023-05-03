class PostsController < ApplicationController

	#ensuring a user is logged in before allowing them to view posts
	before_action :ensure_current_user

	def index
		@posts = current_user.posts 
		
	end

	def new
		@post = Post.new
	end

	def create
		@post = current_user.posts.new(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def show 
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end

	end

	def edit
		@post = Post.find(params[:id])
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to post_path

	end



	private

	def set_post
		@post = current_user.posts.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :content)
	end


end

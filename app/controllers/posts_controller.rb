class PostsController < ApplicationController

    def index
        @posts = Post.all
        render json: @posts
    end

    def new
        @post = Post.new
    end

    def create
    # category = Category.find_or_create_by(name: params[:category_name])

    post = post.create(
      title: params[:title],
      post_text: params[:post_text]
    )

    if post.valid?
      render json: post
    else
      render json: { errors: post.errors.full_messages }, status: 400
    end
    
  end

  def update
    post = post.find(params[:id])
    post.update(post_text: params[:post_text])
    render json: post
  end

  def destroy
    post = post.find(params[:id])
    post.destroy
    render json: { message: "post was sent to the trash" }
  end
end

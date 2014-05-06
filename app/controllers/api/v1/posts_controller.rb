class Api::V1::PostsController < ApplicationController
  respond_to :json

  def index
    respond_with Post.all
  end

  def show
    @post = Post.find(params[:id])
    respond_with @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end

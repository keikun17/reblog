class Api::V1::PostsController < ApplicationController
  respond_to :json

  def index
    respond_with Post.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end

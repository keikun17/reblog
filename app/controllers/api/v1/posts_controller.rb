class Api::V1::PostsController < ApplicationController
  respond_to :json

  def index
    respond_with post.all
  end

  private

  def story_params
    params.require(:post).permit(:title, :body)
  end
end

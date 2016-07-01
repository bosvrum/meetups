class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:event_id, :body)
  end
end

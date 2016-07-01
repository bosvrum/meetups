class CommentsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create(comment_params)
    @comment.user_id = current_user.id 
    if @comment.save
      redirect_to @event
    else
      flash.now[:danger] = "error"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:event_id, :user_id, :body)
  end
end

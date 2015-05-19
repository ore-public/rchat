class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: %i(index create)

  def index
  end

  def create
    @comment = @room.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      render
    else
      render 'failure'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_room
    @room = Room.find(params[:room_id])
  end
end

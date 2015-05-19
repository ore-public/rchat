class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: %i(destroy)

  def index
    @rooms = Room.all
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      render
    else
      render 'failure'
    end
  end

  def destroy
    @room.destroy
    render :create
  end

  private
  def room_params
    params.require(:room).permit(:name)
  end

  def set_room
    @room = Room.find(params[:id])
  end
end

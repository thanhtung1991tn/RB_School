class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find_by_id params[:id]
    unless @room
      flash[:danger] = t ".id_not_found"
      redirect_to root_path
    end
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new room_params
    if @room.save
      flash[:success] = t ".create_success"
      binding.pry
      redirect_to @room
    else
      flash.now[:danger] = t ".create_fails"
      render :new
    end
  end

  private
  def room_params
    params.require(:room).permit Room::ROOM_ATTRIBUTES
  end
end

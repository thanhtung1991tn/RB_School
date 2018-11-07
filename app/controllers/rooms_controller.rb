class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find_by_id params[:id]
    unless @room
      flash[:danger] = "Id not found, please try again!"
      redirect_to root_path
    end
  end
end



class RoomsController < ApplicationController
  before_action :load_room, except: [:index, :new, :create]

  def index
    @rooms = Room.page(params[:page]).per 10
  end

  def show
    unless @room
      flash.now[:danger] = t ".id_not_found"
      redirect_to root_path
    end
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new room_params
    if @room.save
      flash.now[:success] = t ".create_success"
      redirect_to @room
    else
      flash.now[:danger] = t ".create_fails"
      render :new
    end
  end

  def edit
    unless @room
      flash.now[:danger] = t ".id_not_found"
      redirect_to root_path
    end
  end

  def update
    if @room && @room.update_attributes(room_params)
      flash.now[:success] = t ".update_success"
      render :show
    else
      flash.now[:danger] = t ".update_fails"
      render :edit
    end
  end

  def destroy
    if @room && @room.destroy
      flash.now[:success] = t ".del_success"
    else
      flash.now[:danger] = t ".id_not_found"
    end
  end

  private
  def room_params
    params.require(:room).permit Room::ROOM_ATTRIBUTES
  end

  def load_room
    @room ||= Room.find_by_id params[:id]
  end
end

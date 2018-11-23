class AddRoomIdToEquipmentHasRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :equipment_has_rooms, :equipment_id, :integer
    add_column :equipment_has_rooms, :room_id, :integer
  end
end

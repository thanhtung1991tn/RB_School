class CreateEquipmentHasRooms < ActiveRecord::Migration[5.1]
  def up
    create_table :equipment_has_rooms do |t|
      t.integer :qty
      t.boolean :status, default: true

      t.timestamps
    end
  end

  def down
    drop_table :equipment_has_rooms
  end
end

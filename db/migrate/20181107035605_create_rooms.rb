class CreateRooms < ActiveRecord::Migration[5.1]
  def up
    create_table :rooms do |t|
      t.string :name
      t.integer :area
      t.integer :qty
      t.timestamps
    end
  end

  def down
    drop_table :rooms
  end
end

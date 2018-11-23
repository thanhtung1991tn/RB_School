class CreateBookRooms < ActiveRecord::Migration[5.1]
  def up
    create_table :book_rooms do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.integer :user_id
      t.integer :room_id
      t.timestamps
    end
  end

  def down
    drop_table :book_rooms
  end
end

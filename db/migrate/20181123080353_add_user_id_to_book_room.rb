class AddUserIdToBookRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :book_rooms, :user_id, :integer
    add_column :book_rooms, :room_id, :integer
  end
end

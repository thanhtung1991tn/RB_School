class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :area
      t.integer :qty
      t.timestamps
    end
  end
end

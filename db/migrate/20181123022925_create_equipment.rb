class CreateEquipment < ActiveRecord::Migration[5.1]
  def up
    create_table :equipment do |t|
      t.string :name
      t.integer :qty
      t.timestamps
    end
  end

  def down
    drop_table :equipment
  end
end

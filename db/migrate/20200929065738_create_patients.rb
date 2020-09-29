class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :station
      t.string :room_nr
      t.string :dining_room
      t.integer :table_number

      t.timestamps
    end
  end
end

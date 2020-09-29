class AddLunchCardIdToPatient < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :lunch_card_id, :int
  end
end

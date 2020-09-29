class RemoveLunchCardIdFromPatients < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :lunch_card_id
  end
end

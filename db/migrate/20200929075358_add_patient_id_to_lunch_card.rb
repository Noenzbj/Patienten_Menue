class AddPatientIdToLunchCard < ActiveRecord::Migration[6.0]
  def change
    add_column :lunch_cards, :patient_id, :int
  end
end

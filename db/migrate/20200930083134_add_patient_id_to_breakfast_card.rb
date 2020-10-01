class AddPatientIdToBreakfastCard < ActiveRecord::Migration[6.0]
  def change
    add_column :breakfast_cards, :patient_id, :int
  end
end

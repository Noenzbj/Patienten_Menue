class AddPatientIdToDiet < ActiveRecord::Migration[6.0]
  def change
    add_column :diets, :patient_id, :int
  end
end

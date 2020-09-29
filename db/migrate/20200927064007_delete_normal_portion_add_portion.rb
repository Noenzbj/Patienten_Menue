class DeleteNormalPortionAddPortion < ActiveRecord::Migration[6.0]
  def change
    remove_column :lunch_cards, :normal_portion
    remove_column :lunch_cards, :small_portion

    add_column :lunch_cards, :portion, :string

    rename_column :lunch_cards, :vegeterean, :vegetarian
  end
end

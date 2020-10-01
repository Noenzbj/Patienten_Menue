class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.boolean :dysphagia, default: false
      t.integer :reduction_diet
      t.boolean :light_food
      t.boolean :low_cholesterol 
      t.boolean :pureed_meat
      t.boolean :bile_liver
      t.boolean :no_pork
      t.boolean :low_purine
      t.boolean :cut_meat
      t.boolean :diabetes
      t.boolean :vegetarian
      t.boolean :pureed_food
      t.boolean :no_fish
      t.boolean :nail_board
      t.boolean :big_cup
      
    
    end
  end
end

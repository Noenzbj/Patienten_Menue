class CreateBreakfastCards < ActiveRecord::Migration[6.0]
  def change
    create_table :breakfast_cards do |t|
      t.boolean :coffee, default: false
      t.boolean :tea, default: false
      t.boolean :milk, default: false
      t.boolean :cocoa, default: false
      t.boolean :hot, default: false
      t.boolean :cold, default: false
      t.boolean :butter, default: false
      t.boolean :becel, default: false
      t.boolean :cold_cuts, default: false
      t.boolean :cut_cheese, default: false
      t.boolean :cheese_spread, default: false
      t.boolean :jam, default: false
      t.boolean :honey, default: false
      t.boolean :egg, default: false
      t.boolean :porridge, default: false
      t.boolean :muesli, default: false
      t.boolean :quark, default: false
      t.boolean :nougat_creme, default: false
      t.integer :bread_bun
      t.integer :multigrain_bun
      t.integer :greybread
      t.integer :whitebread
      t.integer :three_grain_bread
      t.integer :crispbread
      t.text :comments
      
      t.timestamps
    end
  end
end

class CreateLunchCard < ActiveRecord::Migration[6.0]
  def change
    create_table :lunch_cards do |t|
      t.boolean :normal_portion, default:false
      t.boolean :small_portion, default:false 
      t.boolean :day_soup, default:false
      t.boolean :dessert, default:false
      t.boolean :pureed_food, default:false
      t.boolean :pureed_meat, default:false
      t.boolean :cut_meat, default:false
      t.boolean :no_meat, default:false
      t.boolean :no_pork, default:false
      t.boolean :vegeterean, default:false
      t.boolean :no_fish, default:false
      t.text :comments      

      t.timestamps
    end
  end
end

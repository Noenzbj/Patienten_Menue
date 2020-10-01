class AddCommentsToBrakfastCard < ActiveRecord::Migration[6.0]
  def change
    add_column :breakfast_cards, :comments, :text
  end
end

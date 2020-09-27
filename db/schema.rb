# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_26_091852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lunch_cards", force: :cascade do |t|
    t.boolean "normal_portion", default: false
    t.boolean "small_portion", default: false
    t.boolean "day_soup", default: false
    t.boolean "dessert", default: false
    t.boolean "pureed_food", default: false
    t.boolean "pureed_meat", default: false
    t.boolean "cut_meat", default: false
    t.boolean "no_meat", default: false
    t.boolean "no_pork", default: false
    t.boolean "vegeterean", default: false
    t.boolean "no_fish", default: false
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
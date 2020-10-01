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

ActiveRecord::Schema.define(version: 2020_10_01_112526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breakfast_cards", force: :cascade do |t|
    t.boolean "coffee", default: false
    t.boolean "tea", default: false
    t.boolean "milk", default: false
    t.boolean "cocoa", default: false
    t.boolean "hot", default: false
    t.boolean "cold", default: false
    t.boolean "butter", default: false
    t.boolean "becel", default: false
    t.boolean "cold_cuts", default: false
    t.boolean "cut_cheese", default: false
    t.boolean "cheese_spread", default: false
    t.boolean "jam", default: false
    t.boolean "honey", default: false
    t.boolean "egg", default: false
    t.boolean "porridge", default: false
    t.boolean "muesli", default: false
    t.boolean "quark", default: false
    t.boolean "nougat_creme", default: false
    t.integer "bread_bun"
    t.integer "multigrain_bun"
    t.integer "greybread"
    t.integer "whitebread"
    t.integer "three_grain_bread"
    t.integer "crispbread"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "patient_id"
    t.text "comments"
  end

  create_table "diets", force: :cascade do |t|
    t.boolean "dysphagia", default: false
    t.integer "reduction_diet"
    t.boolean "light_food"
    t.boolean "low_cholesterol"
    t.boolean "pureed_meat"
    t.boolean "bile_liver"
    t.boolean "no_pork"
    t.boolean "low_purine"
    t.boolean "cut_meat"
    t.boolean "diabetes"
    t.boolean "vegetarian"
    t.boolean "pureed_food"
    t.boolean "no_fish"
    t.boolean "nail_board"
    t.boolean "big_cup"
    t.integer "patient_id"
  end

  create_table "lunch_cards", force: :cascade do |t|
    t.boolean "day_soup", default: false
    t.boolean "dessert", default: false
    t.boolean "pureed_food", default: false
    t.boolean "pureed_meat", default: false
    t.boolean "cut_meat", default: false
    t.boolean "no_meat", default: false
    t.boolean "no_pork", default: false
    t.boolean "vegetarian", default: false
    t.boolean "no_fish", default: false
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "portion"
    t.integer "patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "station"
    t.string "room_nr"
    t.string "dining_room"
    t.integer "table_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

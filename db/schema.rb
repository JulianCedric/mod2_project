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

ActiveRecord::Schema.define(version: 2020_06_15_214055) do

  create_table "appointments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "superhero_id"
    t.string "day"
    t.time "start_time"
    t.time "end_time"
    t.string "location"
    t.text "description_of_service"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "superheros", force: :cascade do |t|
    t.string "name"
    t.integer "intelligence"
    t.integer "strength"
    t.integer "speed"
    t.integer "durability"
    t.integer "power"
    t.integer "combat"
    t.string "img_url"
    t.integer "price"
    t.integer "website_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "alignment"
    t.string "alter_ego"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.boolean "is_hero?"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

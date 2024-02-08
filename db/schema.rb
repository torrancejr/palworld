# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_08_131835) do
  create_table "pal_types", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug"
    t.string "icon"
    t.integer "icon_height"
    t.integer "icon_width"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "pals", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.integer "pal_type_id"
    t.integer "work_type_id"
    t.integer "combat_type_id"
    t.integer "speed_type_id"
    t.integer "food"
    t.string "icon"
    t.integer "icon_height"
    t.integer "icon_width"
    t.integer "breed_power"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

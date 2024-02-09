class CreatePals < ActiveRecord::Migration[7.1]
  def change
    create_table :pals do |t|
      t.string "name",              null:false
      t.integer  "pal_type_id"
      t.integer  "work_type_id"
      t.integer  "combat_type_id"
      t.integer  "speed_type_id"
      t.integer "food"
      t.string   "icon"
      t.integer  "icon_height"
      t.integer  "icon_width"
      t.integer "breed_power"
      t.timestamps
    end
  end
end

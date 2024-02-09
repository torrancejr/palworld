class CreatePalTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :pal_types do |t|
      t.string   "name",                       null: false
      t.string   "slug"
      t.string   "icon"
      t.integer  "icon_height"
      t.integer  "icon_width"
      t.timestamps
    end
  end
end

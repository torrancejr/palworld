class AddDescriptionToPalTypes < ActiveRecord::Migration[7.1]
  def change
    add_column :pal_types, :description,  :text, limit: 65535
  end
end

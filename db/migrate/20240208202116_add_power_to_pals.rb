class AddPowerToPals < ActiveRecord::Migration[7.1]
  def change
    add_column :pals, :number, :integer
    add_column :pals, :power, :integer
  end
end
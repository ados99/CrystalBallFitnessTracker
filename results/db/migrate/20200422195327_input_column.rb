class InputColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :inputs, :height
    add_column :inputs, :height_feet, :integer
    add_column :inputs, :height_inches, :integer
  end
end

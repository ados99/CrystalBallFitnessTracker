class FixTables < ActiveRecord::Migration[6.0]
  def change
    remove_column :inputs, :float
    add_column :inputs, :bed_time, :time
    add_column :inputs, :wake_up_time, :time
    add_column :records, :sleep_time, :time
  end
end

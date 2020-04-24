class FixInputsTable < ActiveRecord::Migration[6.0]
  def change
    change_column :inputs, :weight, :integer
    rename_column :inputs, :rec_exercise_time, :exercise_time
    change_column :inputs, :exercise_time, :integer
  end
end

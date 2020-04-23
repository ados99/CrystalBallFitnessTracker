class CombineInputsAndRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :inputs, :bmi, :decimal
    add_column :inputs, :sleep_time, :time
    add_column :inputs, :rec_exercise_time, :string
    add_column :inputs, :rec_foods, :string
    add_column :inputs, :rec_cal_count, :integer
    add_column :inputs, :rec_sleep_time, :text
  end
end

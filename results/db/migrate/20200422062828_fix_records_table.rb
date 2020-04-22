class FixRecordsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :records, :user_id
    remove_column :records, :name
    remove_column :records, :date
    rename_column :records, :recSleepTime, :rec_sleep_time
    rename_column :records, :recExerciseTime, :rec_exercise_time
    rename_column :records, :recCalCount, :rec_cal_count
    rename_column :records, :recFoods, :rec_foods
  end
end

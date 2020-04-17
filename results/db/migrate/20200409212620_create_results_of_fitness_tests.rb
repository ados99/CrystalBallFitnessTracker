=begin
  Created by Atharva Doshi on 4/9/2020
  This class creates the outputTableField
=end
class CreateResultsOfFitnessTests < ActiveRecord::Migration[6.0]
  def change
    create_table :results_of_fitness_tests do |t|
      t.belongs_to :user
      t.string :name
      t.date   :date
      t.time    :recSleepTime
      t.decimal :bmi
      t.integer :recCalCount
      t.text    :recFoods
      t.time    :recExerciseTime
      t.timestamps
    end
  end
end

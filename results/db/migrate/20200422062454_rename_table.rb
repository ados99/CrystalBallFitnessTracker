class RenameTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :results_of_fitness_tests, :records
  end
end

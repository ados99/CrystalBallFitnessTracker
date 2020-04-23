class RemoveDatesFromMeals < ActiveRecord::Migration[6.0]
  def change

    remove_column :meals, :Date, :date
  end
end

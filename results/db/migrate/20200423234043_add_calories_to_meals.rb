class AddCaloriesToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :Calories, :integer
  end
end

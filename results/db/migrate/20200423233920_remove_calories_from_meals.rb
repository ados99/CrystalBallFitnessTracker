class RemoveCaloriesFromMeals < ActiveRecord::Migration[6.0]
  def change

    remove_column :meals, :Breakfast_Calorie, :integer

    remove_column :meals, :Lunch_Calorie, :integer

    remove_column :meals, :Dinner_Calorie, :integer

    remove_column :meals, :Snack_Calorie, :integer
  end
end

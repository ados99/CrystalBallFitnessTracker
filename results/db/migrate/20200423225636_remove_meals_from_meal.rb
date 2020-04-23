class RemoveMealsFromMeal < ActiveRecord::Migration[6.0]
  def change

    remove_column :meals, :Breakfast, :string

    remove_column :meals, :Lunch, :string

    remove_column :meals, :Dinner, :string

    remove_column :meals, :Snacks, :string
  end
end

class AddMealToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :meal, :string
  end
end

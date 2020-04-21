class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.date :Date
      t.text :Breakfast
      t.integer :Breakfast_Calorie
      t.text :Lunch
      t.integer :Lunch_Calorie
      t.text :Dinner
      t.integer :Dinner_Calorie
      t.text :Snack
      t.integer :Snack_Calorie

      t.timestamps
    end
  end
end

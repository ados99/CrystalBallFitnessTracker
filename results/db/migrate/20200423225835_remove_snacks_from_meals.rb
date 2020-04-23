class RemoveSnacksFromMeals < ActiveRecord::Migration[6.0]
  def change

    remove_column :meals, :Snacks, :text
  end
end

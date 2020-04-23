class RemoveSnackFromMeals < ActiveRecord::Migration[6.0]
  def change

    remove_column :meals, :Snack, :string
  end
end

class CreateInputs < ActiveRecord::Migration[6.0]
  def change
    create_table :inputs do |t|
      t.integer :age
      t.string :gender
      t.float :height
      t.string :weight
      t.string :float

      t.timestamps
    end
  end
end

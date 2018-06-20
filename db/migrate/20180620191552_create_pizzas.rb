class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.references :recipe, foreign_key: true
      t.string :crust
      t.integer :total_price

      t.timestamps
    end
  end
end

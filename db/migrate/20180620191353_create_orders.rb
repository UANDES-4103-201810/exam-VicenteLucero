class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :pizza, foreign_key: true
      t.references :costumer, foreign_key: true
      t.references :delivery, foreign_key: true
      t.string :payment_method

      t.timestamps
    end
  end
end

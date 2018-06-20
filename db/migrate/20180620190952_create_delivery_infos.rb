class CreateDeliveryInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_infos do |t|
      t.references :order, foreign_key: true
      t.integer :phone
      t.string :address_line1
      t.string :address_line2

      t.timestamps
    end
  end
end

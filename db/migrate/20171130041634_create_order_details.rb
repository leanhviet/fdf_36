class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.string :quantity
      t.integer :price
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

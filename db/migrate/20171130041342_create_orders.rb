class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.datetime :created_date
      t.references :user, foreign_key: true
      t.integer :total_money
      t.string :status

      t.timestamps
    end
  end
end

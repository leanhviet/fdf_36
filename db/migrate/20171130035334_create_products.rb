class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :quantity
      t.string :image_link
      t.string :image_list
      t.text :detail_description
      t.string :short_description
      t.string :discription_tittle
      t.references :category, foreign_key: true

      t.timestamps
    end
      add_index :products, :price
      add_index :products, :name
  end
end

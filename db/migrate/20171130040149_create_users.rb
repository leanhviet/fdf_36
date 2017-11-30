class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :activation_digest
      t.boolean :gender
      t.string :address
      t.string :avatar
      t.references :permission, foreign_key: true;

      t.timestamps
    end
      add_index :users, :name
      add_index :users, :email, unique: true
  end
end


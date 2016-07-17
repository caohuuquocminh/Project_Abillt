class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :price
      t.integer :category

      t.timestamps null: false
    end
  end
end

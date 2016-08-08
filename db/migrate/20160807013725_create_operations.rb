class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer :app_id
      t.integer :operatingsystem_id
      t.string :information

      t.timestamps null: false
    end
  end
end

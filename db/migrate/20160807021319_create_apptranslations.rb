class CreateApptranslations < ActiveRecord::Migration
  def change
    create_table :apptranslations do |t|
      t.integer :app_id
      t.integer :language_id

      t.timestamps null: false
    end
  end
end
class CreateAppTranslations < ActiveRecord::Migration
	def up
		App.create_translation_table!({
			description: :string,
			# content: :text 
			}, 
			{migrate_data: true })
  end

  def down
    App.drop_translation_table! migrate_data: true
  end
end

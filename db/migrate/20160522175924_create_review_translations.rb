class CreateReviewTranslations < ActiveRecord::Migration

  def up
    Review.create_translation_table!({
      comment: :string,
    }, {
      migrate_data: true
    })
  end

  def down
    Review.drop_translation_table! migrate_data: true
  end
end

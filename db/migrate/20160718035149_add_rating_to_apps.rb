class AddRatingToApps < ActiveRecord::Migration
  def change
    add_column :apps, :rating, :integer
  end
end

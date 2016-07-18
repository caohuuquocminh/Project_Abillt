class Review < ActiveRecord::Base
	belongs_to :app
	belongs_to :store
	belongs_to :user
	translates :comment

	ransacker :rating do
  		Arel.sql('rating')
	end
end

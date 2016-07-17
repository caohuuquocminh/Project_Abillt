class Review < ActiveRecord::Base
	belongs_to :app
	belongs_to :user
	translates :comment
end

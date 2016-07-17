class Category < ActiveRecord::Base
	has_many :apps
	translates :name

	 def self.find_by(*args)
    self.where(*args).take
  end
end

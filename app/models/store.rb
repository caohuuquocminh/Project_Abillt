class Store < ActiveRecord::Base
	has_many :reviews

	ransacker :average do
  		Arel.sql('average')
	end
end

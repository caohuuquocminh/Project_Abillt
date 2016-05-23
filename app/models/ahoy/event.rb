module Ahoy
  class Event < ActiveRecord::Base
    self.table_name = "ahoy_events"

    belongs_to :visit
    belongs_to :user

    serialize :properties, JSON
    def track_event(name, properties, options)
	    super do |event|
	      event.ip = request.ip
	    end
	end

	def user
    controller.true_user
  	end
  end
end

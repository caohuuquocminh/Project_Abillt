class Visit < ActiveRecord::Base
  has_many :ahoy_events, class_name: "Ahoy::Event"
  belongs_to :user, polymorphic: true
  def track_visit(options)
    super do |visit|
      visit.gclid = visit_properties.landing_params["gclid"]
    end
  end

  def user
    controller.true_user
  end
end

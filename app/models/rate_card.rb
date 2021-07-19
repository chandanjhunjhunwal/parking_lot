class RateCard < ApplicationRecord
  belongs_to :customer_account

  AVAILABLE_VEHICLE_TYPES = {
    car: 0,
    bike: 1
  }.freeze

  def create_rate_card(vehicle_type:, hourly_rate_card:, per_day_rate: )

  end
end

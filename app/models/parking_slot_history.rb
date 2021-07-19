class ParkingSlotHistory < ApplicationRecord
  belongs_to :customer_account
  belongs_to :parking_floor
  belongs_to :parking_slot

  # Given a vehicle no., see complete parking history (Lot, Duration, Amount Paid)
end

class ParkingSlot < ApplicationRecord
  belongs_to :customer_account
  belongs_to :parking_floor

  AVAILABLE_SLOT_TYPES = {
    car: 0,
    bike: 1
  }.freeze

  AVAILABLE_STATUS = {
    available: 0,
    occupied: 1
  }.freeze

  def self.create_slots(customer_account_id, parking_floor_id, type:, size:)
    vehicle_params = []
    size.times do
      param = {
        customer_account_id: customer_account_id,
        parking_floor_id: parking_floor_id,
        slot_type: AVAILABLE_SLOT_TYPES[type],
        status: AVAILABLE_STATUS[:available]
      }
      vehicle_params.push(param)
    end
    create(vehicle_params)
  end
  # Park a Vehicle at a given parking lot (should fail if the lot is full)
  #
  #
  # Exit from the parking area and tell the amount due for the duration.
end

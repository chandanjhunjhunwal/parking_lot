class ParkingFloor < ApplicationRecord
  belongs_to :customer_account

  def self.create_parking_floor(customer_account_id)
    create(customer_account_id: customer_account_id)
  end
end

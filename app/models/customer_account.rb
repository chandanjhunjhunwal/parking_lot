class CustomerAccount < ApplicationRecord
  before_create :create_unique_account_registration_number
  validates_presence_of :name
  has_many :parking_floors
  has_many :parking_slots
  has_many :parking_slot_histories
  has_many :rate_cards

  # Register a parking lot with its capacities and rate card.
  def self.register_customer_account(name)
    account = create(name: name)
    puts "Registration Id: #{account.account_registration_number}"
    puts "account = CustomerAccount.find_by(account_registration_number: '#{account.account_registration_number}')\n"
    puts "account.register_vehicle_slots(number_of_car_slot, number_of_bike_slot)\n"
  end

  def register_vehicle_slots(car_slot, bike_slot)
    parking_floor = ParkingFloor.create_parking_floor(self.id)
    car_parking_slots = ParkingSlot.create_slots(self.id, parking_floor.id, type: :car, size: car_slot)
    puts "#{car_slot} car parking slots created\n"
    bike_parking_slots = ParkingSlot.create_slots(self.id, parking_floor.id, type: :bike, size: bike_slot)
    puts "#{bike_slot} bike parking slots created\n"
    puts "Create rate card for Car\n"
    # car_rate_card = RateCard.
    # vehicle_type: :car
    # hourly_price = {2 => 20, 4 => 50, 24 => 80}
    # per_day_price = 80
  end

  private

  def create_unique_account_registration_number
    self.account_registration_number = self.name + '-' + Time.now.to_i.to_s
  end
end

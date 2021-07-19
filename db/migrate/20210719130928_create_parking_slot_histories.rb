class CreateParkingSlotHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :parking_slot_histories do |t|
      t.belongs_to :parking_floor
      t.belongs_to :customer_account
      t.datetime :start_time
      t.datetime :end_time
      t.integer :status
      t.integer :slot_type
      t.references :vehicle
      t.string :vehicle_registration_number
      t.timestamps
    end
  end
end

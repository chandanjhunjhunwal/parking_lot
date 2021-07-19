class CreateParkingSlots < ActiveRecord::Migration[6.1]
  def change
    create_table :parking_slots do |t|
      t.belongs_to :customer_account
      t.belongs_to :parking_floor
      t.datetime :start_time
      t.datetime :end_time
      t.integer :status
      t.integer :slot_type
      t.references :vehicle
      t.timestamps
    end
  end
end

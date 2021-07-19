class CreateParkingFloors < ActiveRecord::Migration[6.1]
  def change
    create_table :parking_floors do |t|
      t.belongs_to :customer_account

      t.timestamps
    end
  end
end

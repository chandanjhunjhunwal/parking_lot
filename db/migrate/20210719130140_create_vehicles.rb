class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.integer :vehicle_type
      t.string :registration_number, unique: true
      t.timestamps
    end
  end
end

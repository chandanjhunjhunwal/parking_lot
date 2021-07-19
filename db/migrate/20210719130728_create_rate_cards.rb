class CreateRateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :rate_cards do |t|
      t.belongs_to :customer_account
      t.float :duration # Assuming it'll be number of hours
      t.float :price # Assuming it's for single currency
      t.integer :vehicle_type
      t.timestamps
    end
  end
end

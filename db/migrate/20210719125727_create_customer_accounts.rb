class CreateCustomerAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_accounts do |t|
      t.string :account_registration_number, unique: true
      t.string :name
      t.timestamps
    end
  end
end

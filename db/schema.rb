# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_19_130928) do

  create_table "customer_accounts", force: :cascade do |t|
    t.string "account_registration_number"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parking_floors", force: :cascade do |t|
    t.integer "customer_account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_account_id"], name: "index_parking_floors_on_customer_account_id"
  end

  create_table "parking_slot_histories", force: :cascade do |t|
    t.integer "parking_floor_id"
    t.integer "customer_account_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "status"
    t.integer "slot_type"
    t.integer "vehicle_id"
    t.string "vehicle_registration_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_account_id"], name: "index_parking_slot_histories_on_customer_account_id"
    t.index ["parking_floor_id"], name: "index_parking_slot_histories_on_parking_floor_id"
    t.index ["vehicle_id"], name: "index_parking_slot_histories_on_vehicle_id"
  end

  create_table "parking_slots", force: :cascade do |t|
    t.integer "customer_account_id"
    t.integer "parking_floor_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "status"
    t.integer "slot_type"
    t.integer "vehicle_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_account_id"], name: "index_parking_slots_on_customer_account_id"
    t.index ["parking_floor_id"], name: "index_parking_slots_on_parking_floor_id"
    t.index ["vehicle_id"], name: "index_parking_slots_on_vehicle_id"
  end

  create_table "rate_cards", force: :cascade do |t|
    t.integer "customer_account_id"
    t.float "duration"
    t.float "price"
    t.integer "vehicle_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_account_id"], name: "index_rate_cards_on_customer_account_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "vehicle_type"
    t.string "registration_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

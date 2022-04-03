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

ActiveRecord::Schema[7.0].define(version: 2022_04_03_053920) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.decimal "price"
    t.string "currency"
    t.string "status"
    t.string "stripe_id"
    t.string "email"
    t.integer "event_id"
    t.bigint "stall_id", null: false
    t.bigint "booth_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booth_id"], name: "index_bookings_on_booth_id"
    t.index ["stall_id"], name: "index_bookings_on_stall_id"
  end

  create_table "booths", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "contact"
    t.string "stall_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.string "organizer_name"
    t.date "start_date"
    t.date "end_date"
    t.integer "mobile_no"
    t.string "city"
    t.integer "total_stall"
    t.string "event_poster"
    t.string "floor_plan"
    t.string "visit_count"
    t.string "description_of_event"
    t.boolean "terms_condition"
    t.string "venue"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "start_time", precision: 6
    t.time "end_time", precision: 6
    t.integer "zip_code"
  end

  create_table "stalls", force: :cascade do |t|
    t.string "stall_type"
    t.string "stall_size"
    t.decimal "stall_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id", null: false
    t.boolean "disable", default: false
    t.index ["event_id"], name: "index_stalls_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "booths"
  add_foreign_key "bookings", "stalls"
  add_foreign_key "stalls", "events"
end

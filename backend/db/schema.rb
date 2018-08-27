# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_27_001443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "babies", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.date "birth_day"
    t.bigint "mother_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mother_id"], name: "index_babies_on_mother_id"
  end

  create_table "baby_users", force: :cascade do |t|
    t.bigint "baby_id"
    t.bigint "caretaker_id"
    t.string "role"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baby_id"], name: "index_baby_users_on_baby_id"
    t.index ["caretaker_id"], name: "index_baby_users_on_caretaker_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "baby_id"
    t.bigint "caretaker_id"
    t.integer "amount_1"
    t.integer "amount_2"
    t.string "unit_1"
    t.string "unit_2"
    t.string "notes"
    t.string "event_type"
    t.bigint "event_id"
    t.datetime "event_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baby_id"], name: "index_events_on_baby_id"
    t.index ["caretaker_id"], name: "index_events_on_caretaker_id"
    t.index ["event_id"], name: "index_events_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "babies", "users", column: "mother_id"
  add_foreign_key "baby_users", "babies"
  add_foreign_key "baby_users", "users", column: "caretaker_id"
  add_foreign_key "events", "babies"
  add_foreign_key "events", "events"
  add_foreign_key "events", "users", column: "caretaker_id"
end

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

ActiveRecord::Schema.define(version: 2019_03_28_193540) do

  create_table "event_informations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Event_venue_id"
    t.index ["Event_venue_id"], name: "index_event_informations_on_Event_venue_id"
  end

  create_table "event_venues", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_informations", force: :cascade do |t|
    t.integer "price"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_information_id"
    t.index ["event_information_id"], name: "index_ticket_informations_on_event_information_id"
  end

  create_table "ticket_orders", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Ticket_information_id"
    t.integer "User_id"
    t.index ["Ticket_information_id"], name: "index_ticket_orders_on_Ticket_information_id"
    t.index ["User_id"], name: "index_ticket_orders_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

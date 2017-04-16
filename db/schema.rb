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

ActiveRecord::Schema.define(version: 20170416110728) do

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "shops_count"
    t.integer  "stations_count"
    t.integer  "score"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "score"
    t.integer  "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "shops_count"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "mail_address"
    t.string   "phone_number"
    t.boolean  "can_use_credit_card"
    t.boolean  "has_parking_lot"
    t.boolean  "has_single_room"
    t.integer  "seats_count"
    t.integer  "genre_id"
    t.integer  "infomation_owner_id"
    t.string   "street_address"
    t.integer  "area_id"
    t.text     "location"
    t.text     "nearest_station_id_1"
    t.integer  "from_nearest_station_1"
    t.text     "nearest_station_id_2"
    t.integer  "from_nearest_station_2"
    t.text     "nearest_station_id_3"
    t.integer  "from_nearest_station_3"
    t.string   "regular_holiday"
    t.time     "business_hours_start_1"
    t.time     "business_hours_end_1"
    t.time     "business_hours_start_2"
    t.time     "business_hours_end_2"
    t.integer  "score"
    t.integer  "comments_count"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "shops_count"
    t.integer  "score"
    t.integer  "area_id"
    t.text     "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

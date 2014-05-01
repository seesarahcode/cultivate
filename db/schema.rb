# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140429055121) do

  create_table "farms", force: true do |t|
    t.string   "name"
    t.string   "start_date"
    t.string   "location"
    t.string   "founder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gardens", force: true do |t|
    t.string   "season"
    t.integer  "year"
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ownerships", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plants", force: true do |t|
    t.string   "lifecycle"
    t.string   "plant_type"
    t.string   "breed"
    t.string   "sun_preference"
    t.string   "soil_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "bio"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "farm_name"
  end

end

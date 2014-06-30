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

ActiveRecord::Schema.define(version: 20140630062642) do

  create_table "chickens", force: true do |t|
    t.string   "category"
    t.string   "name"
    t.date     "birthdate"
    t.string   "breed"
    t.string   "sex"
    t.text     "description"
    t.string   "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ducks", force: true do |t|
    t.string   "category"
    t.string   "name"
    t.date     "birthdate"
    t.string   "breed"
    t.string   "sex"
    t.text     "description"
    t.string   "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "default_img_file_name"
    t.string   "default_img_content_type"
    t.integer  "default_img_file_size"
    t.datetime "default_img_updated_at"
  end

  create_table "goats", force: true do |t|
    t.string   "category"
    t.string   "name"
    t.date     "birthdate"
    t.string   "breed"
    t.string   "sex"
    t.text     "description"
    t.string   "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orchards", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ownerships", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pigs", force: true do |t|
    t.string   "category"
    t.string   "name"
    t.date     "birthdate"
    t.string   "breed"
    t.string   "sex"
    t.text     "description"
    t.string   "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plants", force: true do |t|
    t.integer  "garden_id"
    t.string   "family"
    t.string   "variety"
    t.string   "seed_source"
    t.integer  "quantity"
    t.text     "notes"
    t.date     "plant_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "plant_image"
  end

  create_table "sheep", force: true do |t|
    t.string   "category"
    t.string   "name"
    t.date     "birthdate"
    t.string   "breed"
    t.string   "sex"
    t.text     "description"
    t.string   "age"
    t.date     "last_sheer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trees", force: true do |t|
    t.string   "tree_type"
    t.string   "variety"
    t.string   "tree_source"
    t.date     "plant_date"
    t.integer  "plant_quantity"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orchard_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.text     "bio"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "farm_name"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "views", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true

end

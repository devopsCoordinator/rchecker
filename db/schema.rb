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

ActiveRecord::Schema.define(version: 20150226094838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.text     "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "areas", ["name"], name: "index_areas_on_name", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "area_id"
    t.integer  "representative_id"
    t.text     "memo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "companies", ["name"], name: "index_companies_on_name", using: :btree

  create_table "devices", force: :cascade do |t|
    t.string   "uuid"
    t.string   "model_type"
    t.text     "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "devices", ["model_type"], name: "index_devices_on_model_type", using: :btree
  add_index "devices", ["uuid"], name: "index_devices_on_uuid", unique: true, using: :btree

  create_table "locations", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "device_id"
    t.text     "department"
    t.text     "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["company_id"], name: "index_locations_on_company_id", using: :btree
  add_index "locations", ["device_id"], name: "index_locations_on_device_id", using: :btree

  create_table "representatives", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobile"
    t.integer  "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "representatives", ["email"], name: "index_representatives_on_email", using: :btree
  add_index "representatives", ["mobile"], name: "index_representatives_on_mobile", using: :btree
  add_index "representatives", ["name"], name: "index_representatives_on_name", using: :btree

  create_table "supplies", force: :cascade do |t|
    t.string   "uuid"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "supplies", ["uuid"], name: "index_supplies_on_uuid", using: :btree

end

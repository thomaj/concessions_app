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

ActiveRecord::Schema.define(version: 20161219052051) do

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items_locations", id: false, force: :cascade do |t|
    t.integer "location_id"
    t.integer "item_id"
  end

  add_index "items_locations", ["item_id"], name: "index_items_locations_on_item_id"
  add_index "items_locations", ["location_id"], name: "index_items_locations_on_location_id"

  create_table "locations", force: :cascade do |t|
    t.string   "location"
    t.boolean  "open"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer  "location_id"
    t.integer  "number_in_stock"
    t.boolean  "available"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "item_id"
  end

end

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

ActiveRecord::Schema.define(version: 20151203200235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "finishes", force: :cascade do |t|
    t.text     "description"
    t.string   "category"
    t.string   "series_no"
    t.string   "finish"
    t.decimal  "price",              precision: 8, scale: 2
    t.string   "image"
    t.integer  "finished_item_id"
    t.string   "finished_item_type"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "finishes", ["finished_item_type", "finished_item_id"], name: "index_finishes_on_finished_item_type_and_finished_item_id", using: :btree

  create_table "tile_categories", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tiles", force: :cascade do |t|
    t.string   "name",                                     null: false
    t.string   "group"
    t.string   "style"
    t.text     "description"
    t.string   "size"
    t.decimal  "price",            precision: 8, scale: 2
    t.string   "image"
    t.integer  "tile_category_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

end

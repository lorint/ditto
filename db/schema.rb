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

ActiveRecord::Schema.define(version: 20150314230146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorizations", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "friendly_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "place_id"
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "match_events", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "user1_id"
    t.integer  "user2_id"
    t.integer  "upcm_id"
    t.boolean  "user1_rslt"
    t.boolean  "user2_rslt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "place_categories", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "place_categories", ["category_id"], name: "index_place_categories_on_category_id", using: :btree
  add_index "place_categories", ["place_id"], name: "index_place_categories_on_place_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.float    "lat"
    t.float    "lng"
    t.string   "yelpid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_place_categories", force: :cascade do |t|
    t.integer  "userplace_id"
    t.string   "category"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "user_place_category_matches", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "upc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_places", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_places", ["place_id"], name: "index_user_places_on_place_id", using: :btree
  add_index "user_places", ["user_id"], name: "index_user_places_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "fb_id"
    t.string   "name"
    t.string   "gender"
    t.string   "email"
    t.integer  "age"
    t.string   "rel_type"
    t.string   "location"
    t.integer  "radius"
    t.string   "orientation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  add_foreign_key "place_categories", "categories"
  add_foreign_key "place_categories", "places"
  add_foreign_key "user_places", "places"
  add_foreign_key "user_places", "users"
end

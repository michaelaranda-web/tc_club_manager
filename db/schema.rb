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

ActiveRecord::Schema.define(version: 20190510185928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attended_events", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "member_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "member_drove", default: false
  end

  add_index "attended_events", ["event_id"], name: "index_attended_events_on_event_id", using: :btree
  add_index "attended_events", ["member_id"], name: "index_attended_events_on_member_id", using: :btree

  create_table "club_fund_activities", force: :cascade do |t|
    t.integer  "type"
    t.float    "amount",     default: 0.0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "event_types", force: :cascade do |t|
    t.string   "name"
    t.float    "volunteer_hours",  default: 0.0
    t.float    "driving_distance", default: 0.0
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.float    "volunteer_hours"
    t.float    "driving_distance"
    t.text     "event_summary"
    t.text     "comments"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "event_type_id"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "quarter"
    t.date     "date"
  end

  add_index "events", ["event_type_id"], name: "index_events_on_event_type_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "nickname"
    t.float    "volunteer_hours"
    t.string   "year"
    t.string   "major"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "reimbursements", force: :cascade do |t|
    t.float    "amount",     default: 0.0
    t.boolean  "claimed",    default: false
    t.integer  "event_id"
    t.integer  "member_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "reimbursements", ["event_id"], name: "index_reimbursements_on_event_id", using: :btree
  add_index "reimbursements", ["member_id"], name: "index_reimbursements_on_member_id", using: :btree

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.text   "description"
    t.string "account"
    t.string "password"
    t.text   "link"
  end

  add_foreign_key "attended_events", "events"
  add_foreign_key "attended_events", "members"
  add_foreign_key "events", "event_types"
  add_foreign_key "reimbursements", "events"
  add_foreign_key "reimbursements", "members"
end

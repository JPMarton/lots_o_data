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

ActiveRecord::Schema.define(version: 20160606191705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string   "role",              default: "Spaceflight Participant", null: false
    t.integer  "space_traveler_id"
    t.integer  "mission_id"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "missions", force: :cascade do |t|
    t.string   "name",           null: false
    t.date     "starts_on"
    t.date     "ends_on"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "program_id"
    t.integer  "space_craft_id"
  end

  create_table "nations", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "country_code", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "nations_space_agencies", id: false, force: :cascade do |t|
    t.integer "space_agency_id"
    t.integer "nation_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string   "name",                            null: false
    t.boolean  "is_active",       default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "space_agency_id"
  end

  create_table "space_agencies", force: :cascade do |t|
    t.string   "abbreviation",             null: false
    t.string   "name",                     null: false
    t.string   "english_name",             null: false
    t.integer  "budget",       default: 0
    t.date     "founded_on"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "space_crafts", force: :cascade do |t|
    t.string   "name",             null: false
    t.string   "build",            null: false
    t.integer  "payload_capacity", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "space_travelers", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "sex"
    t.date     "born_on"
    t.date     "died_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "nation_id"
  end

end

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

ActiveRecord::Schema.define(version: 20150709165436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_weeks", force: :cascade do |t|
    t.string   "games"
    t.integer  "week_number"
    t.date     "season"
    t.boolean  "master"
    t.boolean  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "team_1"
    t.string   "team_2"
    t.integer  "team_1_score"
    t.integer  "team_2_score"
    t.datetime "date"
    t.integer  "spread"
    t.boolean  "status"
    t.string   "winner"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.boolean  "admin"
    t.string   "name"
    t.integer  "weekly_score"
    t.integer  "total_score"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end

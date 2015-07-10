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

ActiveRecord::Schema.define(version: 20150710193951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_weeks", force: :cascade do |t|
    t.integer "week_number"
    t.date    "season"
    t.boolean "master"
    t.boolean "status"
    t.integer "user_id"
  end

  add_index "game_weeks", ["user_id"], name: "index_game_weeks_on_user_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.integer  "team1_score"
    t.integer  "team2_score"
    t.datetime "game_date"
    t.decimal  "spread"
    t.boolean  "status"
    t.string   "winner"
    t.integer  "game_week_id"
  end

  add_index "games", ["game_week_id"], name: "index_games_on_game_week_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string  "name"
    t.string  "logo_url"
    t.integer "game_id"
  end

  add_index "teams", ["game_id"], name: "index_teams_on_game_id", using: :btree

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

  add_foreign_key "game_weeks", "users"
  add_foreign_key "games", "game_weeks"
  add_foreign_key "teams", "games"
end

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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131029161757) do

  create_table "batting_lines", :force => true do |t|
    t.integer  "innings_id"
    t.integer  "batsman_id"
    t.integer  "runs"
    t.string   "balls"
    t.integer  "fours"
    t.integer  "sixes"
    t.boolean  "is_out"
    t.string   "how_out"
    t.string   "bowler"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bowling_lines", :force => true do |t|
    t.integer  "innings_id"
    t.integer  "bowler_id"
    t.integer  "overs"
    t.integer  "runs"
    t.integer  "maidens"
    t.integer  "wickets"
    t.integer  "no_balls"
    t.integer  "wides"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "innings", :force => true do |t|
    t.integer  "match_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "match_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "matches", :force => true do |t|
    t.text     "location"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.date     "played_on"
    t.integer  "venue_id"
    t.integer  "match_type_id"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.string   "status"
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.string   "telephone"
    t.string   "picture"
    t.integer  "team_id"
    t.string   "role"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "points", :force => true do |t|
    t.integer  "match_id"
    t.integer  "team_id"
    t.integer  "batting"
    t.integer  "bowling"
    t.integer  "match"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scorecards", :force => true do |t|
    t.integer  "match_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_name"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

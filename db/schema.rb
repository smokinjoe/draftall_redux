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

ActiveRecord::Schema.define(version: 20130909060303) do

  create_table "choices", force: true do |t|
    t.string   "body"
    t.integer  "votes"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "choices", ["player_id"], name: "index_choices_on_player_id"

  create_table "games", force: true do |t|
    t.string   "title"
    t.string   "hash"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.integer  "owns_game_id"
    t.string   "hash"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["game_id"], name: "index_players_on_game_id"
  add_index "players", ["owns_game_id"], name: "index_players_on_owns_game_id"

end
